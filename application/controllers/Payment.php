<?php
defined('BASEPATH') or exit('No direct script access allowed');

class Payment extends MY_Controller
{
    /**
     * ---------------------------------------------------------------------------------------------
     * ...:::!!! ============================== CONSTRUCTOR ============================== !!!:::...
     * ---------------------------------------------------------------------------------------------
     */
    //const merchant_id                                 = '150883'; // Mağaza numarası
    //const merchant_key                                 = 'K8m39eREZitxrb3p'; // Mağaza Parolası - Mağaza paneline giriş yaparak BİLGİ sayfasından alabilirsiniz.
    //const merchant_salt                             = 'DW4UoAi1Twr8xJxd'; // Mağaza Gizli Anahtarı - Mağaza paneline giriş yaparak BİLGİ sayfasından alabilirsiniz.
    const merchant_id                                 = '288923'; // Mağaza numarası
    const merchant_key                                 = 'Qd64UQXx7rY6aYWx'; // Mağaza Parolası - Mağaza paneline giriş yaparak BİLGİ sayfasından alabilirsiniz.
    const merchant_salt                             = 'fijoHEqdh3j5UzAo'; // Mağaza Gizli Anahtarı - Mağaza paneline giriş yaparak BİLGİ sayfasından alabilirsiniz.
    /**
     * Constructor
     */
    public function __construct()
    {
        parent::__construct();
        $this->viewFolder = "payment_v";
    }
    /**
     * ---------------------------------------------------------------------------------------------
     * ...:::!!! ============================== CONSTRUCTOR ============================== !!!:::...
     * ---------------------------------------------------------------------------------------------
     */

    /**
     * -----------------------------------------------------------------------------------------------
     * ...:::!!! ================================ PAYMENT ================================== !!!:::...
     * -----------------------------------------------------------------------------------------------
     */
    /**
     * Payment
     */
    public function index()
    {
        $this->viewFolder = "payment_v/index";
        $this->viewData->page_title = clean(strto("lower|ucwords", lang("payment")));
        $this->viewData->meta_title = clean(strto("lower|ucwords", lang("payment"))) . " - " . $this->viewData->settings->company_name;
        $this->viewData->meta_desc  = str_replace("”", "\"", @stripslashes($this->viewData->settings->meta_description));

        $this->viewData->og_url                 = clean(base_url(lang("routes_payment")));
        $this->viewData->og_image           = clean(get_picture("settings_v", $this->viewData->settings->logo));
        $this->viewData->og_type          = "article";
        $this->viewData->og_title           = clean(strto("lower|ucwords", lang("payment"))) . " - " . $this->viewData->settings->company_name;
        $this->viewData->og_description           = clean($this->viewData->settings->meta_description);
        $this->render();
    }
    /**
     * Payment Form
     */
    public function payment_form()
    {
        $data = rClean($this->input->post());
        if (checkEmpty($data)["error"]) :
            $key = checkEmpty($data)["key"];
            echo json_encode(["success" => false, "title" => lang("errorMessageTitleText"), "message" => lang("errorMessageText") . " \"{$key}\" " . lang("emptyMessageText")]);
            die();
        else :

            if (isset($_SERVER["HTTP_CLIENT_IP"])) :
                $user_ip = $_SERVER["HTTP_CLIENT_IP"];
            elseif (isset($_SERVER["HTTP_X_FORWARDED_FOR"])) :
                $user_ip = $_SERVER["HTTP_X_FORWARDED_FOR"];
            else :
                $user_ip = $_SERVER["REMOTE_ADDR"];
            endif;

            // PAYTR VERİLERİ
            $paytr =
                [
                    'merchant_id'                => self::merchant_id,
                    'merchant_key'                => self::merchant_key,
                    'merchant_salt'                => self::merchant_salt,
                    'post_url'                    => 'https://www.paytr.com/odeme',
                    'installment_count'            => '0',
                    'payment_type'                => 'card',
                    'currency'                    => 'TL',
                    'payment_amount'            => $data["amount"],
                    'email'                        => $data["email"],
                    'user_ip'                    => $user_ip,
                    'non_3d'                    => '0',
                    'non3d_test_failed'            => '0',
                    'test_mode'                    => '1',
                    'merchant_oid'                => '9' . rand(100000, 999999) . strtoupper(substr(md5(time()), 0, 3)),
                    'user_basket'                => htmlentities(json_encode([["Hizmet Bedeli", $data["amount"], "1"]])),
                    'card_type'                    => 'paraf', // Alabileceği değerler; advantage, axess, combo, bonus, cardfinans, maximum, paraf, world
                    'merchant_ok_url'            => base_url(lang("routes_payment-success")),
                    'merchant_fail_url'            => base_url(lang("routes_payment-error"))
                ];

            $hash_str = self::merchant_id . $paytr['user_ip'] . $paytr['merchant_oid'] . $paytr['email'] . $paytr['payment_amount'] . $paytr['payment_type'] . $paytr['installment_count'] . $paytr['currency'] . $paytr['test_mode'] . $paytr['non_3d'];
            $token = base64_encode(hash_hmac('sha256', $hash_str . self::merchant_salt, self::merchant_key, true));
            $post_vals = [
                'merchant_id'            => self::merchant_id,
                'user_ip'                => $user_ip,
                'merchant_oid'             => $paytr['merchant_oid'],
                'email'                    => $paytr['email'],
                'payment_amount'        => $paytr['payment_amount'],
                'paytr_token'            => $token,
                'user_basket'            => htmlentities(json_encode([["Hizmet Bedeli", $data["amount"], "1"]])),
                'debug_on'                => 1,
                'no_installment'        => 0,
                'max_installment'         => 0,
                'user_name'             => $data["first_name"] . " " . $data["last_name"],
                'user_address'             => $data["address"],
                'user_phone'             => $data["phone"],
                'merchant_ok_url'         => base_url(lang("routes_payment-success")),
                'merchant_fail_url'     => base_url(lang("routes_payment-error")),
                'timeout_limit'         => 60,
                'currency'                 => "TL",
                'test_mode'             => 1
            ];
            $ch = curl_init();
            curl_setopt($ch, CURLOPT_URL, "https://www.paytr.com/odeme/api/get-token");
            curl_setopt($ch, CURLOPT_RETURNTRANSFER, 1);
            curl_setopt($ch, CURLOPT_POST, 1);
            curl_setopt($ch, CURLOPT_POSTFIELDS, $post_vals);
            curl_setopt($ch, CURLOPT_FRESH_CONNECT, true);
            curl_setopt($ch, CURLOPT_TIMEOUT, 20);

            // XXX: DİKKAT: lokal makinanızda "SSL certificate problem: unable to get local issuer certificate" uyarısı alırsanız eğer
            // aşağıdaki kodu açıp deneyebilirsiniz. ANCAK, güvenlik nedeniyle sunucunuzda (gerçek ortamınızda) bu kodun kapalı kalması çok önemlidir!
            //curl_setopt($ch, CURLOPT_SSL_VERIFYPEER, 0);

            $result = @curl_exec($ch);

            if (curl_errno($ch))
                die("PAYTR IFRAME connection error. err:" . curl_error($ch));

            curl_close($ch);

            $result = json_decode($result, 1);
            
            if ($result['status'] == 'success')
                $token = $result['token'];
            else
                die("PAYTR IFRAME failed. reason:" . $result['reason']);
            echo json_encode(["success" => true, "title" => lang("successMessageTitleText"), "message" => lang("paymentSuccessMessageText"), "token" => $token]);
        endif;
    }

    /**
     * Payment Success
     */
    public function payment_success()
    {
        if (!empty($_POST)) :
            $hash = base64_encode(hash_hmac('sha256', $this->input->post('merchant_oid') . self::merchant_salt . $this->input->post('status') . $this->input->post('total_amount'), self::merchant_key, true));
            if ($hash == $this->input->post('hash')) :
                $code = $this->input->post('merchant_oid');
                $message = "Yeni Bir Tahsilatınız Mevcut! <br> <br> Tahsilat Kodu: {$code} <br> Tahsilat Tutarı: {$this->input->post('total_amount')} <br> Tahsilat Durumu: {$this->input->post('status')} <br> Tahsilat Tarihi: " . date("d.m.Y H:i:s") . " <br> <br> İyi Günler Dileriz.";
                $message = $this->load->view("includes/simple_mail_template", ["settings" => get_settings(), "subject" => "Yeni Bir Tahsilat Var! | " . $this->viewData->settings->company_name, "message" => $message, "lang" => $this->viewData->lang], true);
                @send_emailv2(null, "Yeni Bir Tahsilat Var! | " . $this->viewData->settings->company_name, $message, [], $this->viewData->lang);
                echo "OK";
                die();
            endif;
        endif;
        $this->viewFolder = "payment_v/success";
        $this->viewData->page_title = clean(strto("lower|ucwords", lang("payment_success")));
        $this->viewData->meta_title = clean(strto("lower|ucwords", lang("payment_success"))) . " - " . $this->viewData->settings->company_name;
        $this->viewData->meta_desc  = str_replace("”", "\"", @stripslashes($this->viewData->settings->meta_description));

        $this->viewData->og_url                 = clean(base_url(lang("routes_payment-success")));
        $this->viewData->og_image           = clean(get_picture("settings_v", $this->viewData->settings->logo));
        $this->viewData->og_type          = "article";
        $this->viewData->og_title           = clean(strto("lower|ucwords", lang("payment_success"))) . " - " . $this->viewData->settings->company_name;
        $this->viewData->og_description           = clean($this->viewData->settings->meta_description);
        $this->render();
    }

    /**
     * Payment Error
     */
    public function payment_error()
    {
        $this->viewFolder = "payment_v/error";
        $this->viewData->page_title = clean(strto("lower|ucwords", lang("payment_error")));
        $this->viewData->meta_title = clean(strto("lower|ucwords", lang("payment_error"))) . " - " . $this->viewData->settings->company_name;
        $this->viewData->meta_desc  = str_replace("”", "\"", @stripslashes($this->viewData->settings->meta_description));

        $this->viewData->og_url                 = clean(base_url(lang("routes_payment-error")));
        $this->viewData->og_image           = clean(get_picture("settings_v", $this->viewData->settings->logo));
        $this->viewData->og_type          = "article";
        $this->viewData->og_title           = clean(strto("lower|ucwords", lang("payment_error"))) . " - " . $this->viewData->settings->company_name;
        $this->viewData->og_description           = clean($this->viewData->settings->meta_description);
        $this->render();
    }

    /**
     * -----------------------------------------------------------------------------------------------
     * ...:::!!! ================================ CONTACT ================================== !!!:::...
     * -----------------------------------------------------------------------------------------------
     */
}
