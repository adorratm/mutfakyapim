<?php defined('BASEPATH') or exit('No direct script access allowed'); ?>
<!--Page Header Start-->
<section class="page-header">
    <div class="page-header__bg" style="background-image: url(<?= get_picture("settings_v", $settings->about_logo) ?>);"></div>
    <div class="container">
        <div class="page-header__inner">
            <h2><?= $page_title ?></h2>
        </div>
    </div>
</section>
<!--Page Header End-->

<section class="contact-page">
    <div class="container">
        <div class="team-details__bottom contact-page__bottom">
            <div class="row">
                <div class="col-xl-12">
                    <div class="comment-form-2 mt-0">
                        <h3 class="comment-form-2__title"><?= lang("paymentForm") ?></h3>
                        <form onsubmit="return false" enctype="multipart/form-data" method="POST" id="payment-form" class="comment-form-2__form contact-form-validated">
                            <div class="row">
                                <div class="col-xl-6">
                                    <div class="comment-form-2__input-box">
                                        <input type="text" name="first_name" id="first_name" placeholder="<?= lang("first_name") ?>" required minlength="2" maxlength="70">
                                    </div>
                                </div>
                                <div class="col-xl-6">
                                    <div class="comment-form-2__input-box">
                                        <input type="text" name="last_name" id="last_name" placeholder="<?= lang("last_name") ?>" required minlength="2" maxlength="70">
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-xl-6">
                                    <div class="comment-form-2__input-box">
                                        <input type="email" name="email" id="email" placeholder="<?= lang("emailaddress") ?>" required>
                                    </div>
                                </div>
                                <div class="col-xl-6">
                                    <div class="comment-form-2__input-box">
                                        <input type="text" name="phone" id="phone" placeholder="<?= lang("phonenumber") ?>" required minlength="11" maxlength="20">
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-xl-6">
                                    <div class="comment-form-2__input-box">
                                        <input type="text" name="company_name" id="company_name" placeholder="<?= lang("company_name") ?>" required minlength="2" maxlength="255">
                                    </div>
                                </div>
                                <div class="col-xl-6">
                                    <div class="comment-form-2__input-box">
                                        <input type="text" name="address" id="address" placeholder="<?= lang("address") ?>" required minlength="2" maxlength="255">
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-xl-12">
                                    <div class="comment-form-2__input-box">
                                        <input type="number" name="amount" id="amount" placeholder="<?= lang("amount") ?>" required min="1">
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-xl-12">
                                    <div class="comment-form-2__btn-box">
                                        <button class="thm-btn comment-form-2__btn btnSubmitPaymentForm" aria-label="<?= $settings->company_name ?>" type="button" data-url="<?= base_url(lang("routes_payment-form")) ?>"><?= lang("submitPayment") ?></button>
                                    </div>
                                </div>
                            </div>
                            <input type="hidden" name="<?= $this->security->get_csrf_token_name(); ?>" value="<?= $this->security->get_csrf_hash(); ?>" />
                        </form>
                    </div>
                    <script src="https://www.paytr.com/js/iframeResizer.min.js"></script>
                    <div class="comment-form-2-iframe"></div>
                </div>
            </div>
        </div>
    </div>

</section>