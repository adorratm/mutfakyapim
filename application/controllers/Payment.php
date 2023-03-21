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
            ## 1. ADIM için örnek kodlar ##

            ####################### DÜZENLEMESİ ZORUNLU ALANLAR #######################
            #
            ## API Entegrasyon Bilgileri - Mağaza paneline giriş yaparak BİLGİ sayfasından alabilirsiniz.
            $merchant_id    = self::merchant_id;
            $merchant_key   = self::merchant_key;
            $merchant_salt  = self::merchant_salt;
            #
            ## Müşterinizin sitenizde kayıtlı veya form vasıtasıyla aldığınız eposta adresi
            $email = $data["email"];
            #
            ## Tahsil edilecek tutar.
            $payment_amount = $data["amount"] * 100; //9.99 için 9.99 * 100 = 999 gönderilmelidir.
            #
            ## Sipariş numarası: Her işlemde benzersiz olmalıdır!! Bu bilgi bildirim sayfanıza yapılacak bildirimde geri gönderilir.
            $merchant_oid = '9' . rand(100000, 999999) . strtoupper(substr(md5(time()), 0, 3));
            #
            ## Müşterinizin sitenizde kayıtlı veya form aracılığıyla aldığınız ad ve soyad bilgisi
            $user_name = $data["first_name"] . " " . $data["last_name"];
            #
            ## Müşterinizin sitenizde kayıtlı veya form aracılığıyla aldığınız adres bilgisi
            $user_address = $data["address"];
            #
            ## Müşterinizin sitenizde kayıtlı veya form aracılığıyla aldığınız telefon bilgisi
            $user_phone = $data["phone"];
            #
            ## Başarılı ödeme sonrası müşterinizin yönlendirileceği sayfa
            ## !!! Bu sayfa siparişi onaylayacağınız sayfa değildir! Yalnızca müşterinizi bilgilendireceğiniz sayfadır!
            ## !!! Siparişi onaylayacağız sayfa "Bildirim URL" sayfasıdır (Bakınız: 2.ADIM Klasörü).
            $merchant_ok_url = base_url(lang("routes_payment-success"));
            #
            ## Ödeme sürecinde beklenmedik bir hata oluşması durumunda müşterinizin yönlendirileceği sayfa
            ## !!! Bu sayfa siparişi iptal edeceğiniz sayfa değildir! Yalnızca müşterinizi bilgilendireceğiniz sayfadır!
            ## !!! Siparişi iptal edeceğiniz sayfa "Bildirim URL" sayfasıdır (Bakınız: 2.ADIM Klasörü).
            $merchant_fail_url = base_url(lang("routes_payment-error"));
            #
            ## Müşterinin sepet/sipariş içeriği
            $user_basket = base64_encode(json_encode([["Hizmet Bedeli", $data["amount"] * 100, "1"]]));
            #
            /* ÖRNEK $user_basket oluşturma - Ürün adedine göre array'leri çoğaltabilirsiniz
            $user_basket = base64_encode(json_encode(array(
                array("Örnek ürün 1", "18.00", 1), // 1. ürün (Ürün Ad - Birim Fiyat - Adet )
                array("Örnek ürün 2", "33.25", 2), // 2. ürün (Ürün Ad - Birim Fiyat - Adet )
                array("Örnek ürün 3", "45.42", 1)  // 3. ürün (Ürün Ad - Birim Fiyat - Adet )
            )));
            */
            ############################################################################################

            ## Kullanıcının IP adresi
            if (isset($_SERVER["HTTP_CLIENT_IP"])) {
                $ip = $_SERVER["HTTP_CLIENT_IP"];
            } elseif (isset($_SERVER["HTTP_X_FORWARDED_FOR"])) {
                $ip = $_SERVER["HTTP_X_FORWARDED_FOR"];
            } else {
                $ip = $_SERVER["REMOTE_ADDR"];
            }

            ## !!! Eğer bu örnek kodu sunucuda değil local makinanızda çalıştırıyorsanız
            ## buraya dış ip adresinizi (https://www.whatismyip.com/) yazmalısınız. Aksi halde geçersiz paytr_token hatası alırsınız.
            $user_ip = $ip;
            ##

            ## İşlem zaman aşımı süresi - dakika cinsinden
            $timeout_limit = "60";

            ## Hata mesajlarının ekrana basılması için entegrasyon ve test sürecinde 1 olarak bırakın. Daha sonra 0 yapabilirsiniz.
            $debug_on = 1;

            ## Mağaza canlı modda iken test işlem yapmak için 1 olarak gönderilebilir.
            $test_mode = 1;

            $no_installment = 0; // Taksit yapılmasını istemiyorsanız, sadece tek çekim sunacaksanız 1 yapın

            ## Sayfada görüntülenecek taksit adedini sınırlamak istiyorsanız uygun şekilde değiştirin.
            ## Sıfır (0) gönderilmesi durumunda yürürlükteki en fazla izin verilen taksit geçerli olur.
            $max_installment = 0;

            $currency = "TL";

            ####### Bu kısımda herhangi bir değişiklik yapmanıza gerek yoktur. #######
            $hash_str = $merchant_id . $user_ip . $merchant_oid . $email . $payment_amount . $user_basket . $no_installment . $max_installment . $currency . $test_mode;
            $paytr_token = base64_encode(hash_hmac('sha256', $hash_str . $merchant_salt, $merchant_key, true));
            $post_vals = array(
                'merchant_id' => $merchant_id,
                'user_ip' => $user_ip,
                'merchant_oid' => $merchant_oid,
                'email' => $email,
                'payment_amount' => $payment_amount,
                'paytr_token' => $paytr_token,
                'user_basket' => $user_basket,
                'debug_on' => $debug_on,
                'no_installment' => $no_installment,
                'max_installment' => $max_installment,
                'user_name' => $user_name,
                'user_address' => $user_address,
                'user_phone' => $user_phone,
                'merchant_ok_url' => $merchant_ok_url,
                'merchant_fail_url' => $merchant_fail_url,
                'timeout_limit' => $timeout_limit,
                'currency' => $currency,
                'test_mode' => $test_mode
            );


            $ch = curl_init();
            curl_setopt($ch, CURLOPT_URL, "https://www.paytr.com/odeme/api/get-token");
            curl_setopt($ch, CURLOPT_RETURNTRANSFER, 1);
            curl_setopt($ch, CURLOPT_POST, 1);
            curl_setopt($ch, CURLOPT_POSTFIELDS, $post_vals);
            curl_setopt($ch, CURLOPT_FRESH_CONNECT, true);
            curl_setopt($ch, CURLOPT_TIMEOUT, 20);

            // XXX: DİKKAT: lokal makinanızda "SSL certificate problem: unable to get local issuer certificate" uyarısı alırsanız eğer
            // aşağıdaki kodu açıp deneyebilirsiniz. ANCAK, güvenlik nedeniyle sunucunuzda (gerçek ortamınızda) bu kodun kapalı kalması çok önemlidir!
            // curl_setopt($ch, CURLOPT_SSL_VERIFYPEER, 0);

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
     * Make Payment
     */
    public function make_payment()
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
