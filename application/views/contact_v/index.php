<?php defined('BASEPATH') or exit('No direct script access allowed'); ?>
<?php $addressTitles = @json_decode($settings->address_title, TRUE); ?>
<?php $phones = @json_decode($settings->phone, TRUE); ?>
<?php $faxes = @json_decode($settings->fax, TRUE); ?>
<?php $addresses = @json_decode($settings->address, TRUE); ?>
<?php $whatsapps = @json_decode($settings->whatsapp, TRUE); ?>
<?php $maps = @json_decode($settings->map, TRUE); ?>

<!--Page Header Start-->
<section class="page-header">
    <div class="page-header__bg" style="background-image: url(<?= get_picture("settings_v", $settings->contact_logo) ?>);"></div>
    <div class="container">
        <div class="page-header__inner">
            <h2><?= $page_title ?></h2>
        </div>
    </div>
</section>
<!--Page Header End-->

<?php $this->load->view("includes/testimonial") ?>

<!--contact Page Start-->
<section class="contact-page">
    <div class="container">
        <div class="contact-page__top">
            <div class="row">
                <div class="col-xl-12 mb-4 contact-map">
                    <?= @htmlspecialchars_decode(@$maps[0]) ?>
                </div>
                <?php foreach ($addresses as $key => $value) : ?>
                    <div class="row mb-4 contact-page__points-list list-unstyled justify-content-center text-center">
                        <?php if (!empty($value)) : ?>
                            <div class="col-xl-12 col-lg-12 col-md-12 mb-4 d-flex text-center justify-content-center">
                                <div class="d-flex align-items-center align-content-center align-self-center mx-auto">
                                    <div class="contact-page__icon">
                                        <span class="fa fa-map-marker-alt"></span>
                                    </div>
                                    <div class="contact-page__content">
                                        <h3 class="contact-page__content-title"><?= lang("address") ?></h3>
                                        <p><?= @$value ?></p>
                                        <p><a rel="dofollow" href="<?= base_url() ?>" title="<?= lang("viewOnMap") ?>" onclick="event.preventDefault();event.stopImmediatePropagation();$('.contact-map').html('<?= $maps[$key] ?>');$('html, body').animate({scrollTop: ($('.contact-map').offset().top - $('.stricky-header').height())}, 'slow');"><?= lang("viewOnMap") ?></a></p>
                                    </div>
                                </div>
                            </div>
                        <?php endif ?>
                        <?php if (!empty($phones[$key])) : ?>
                            <div class="col-xl-4 col-lg-4 col-md-6 mb-4">
                                <div class="d-flex align-items-center align-content-center align-self-center">
                                    <div class="contact-page__icon">
                                        <span class="fa fa-phone-volume"></span>
                                    </div>
                                    <div class="contact-page__content">
                                        <h3 class="contact-page__content-title"><?= lang("phone") ?></h3>
                                        <p><a href="tel:<?= @str_replace(" ", "", @$phones[$key]) ?>" rel="dofollow" title="<?= lang("phone") ?>"><?= @$phones[$key] ?></a></p>
                                    </div>
                                </div>
                            </div>
                        <?php endif ?>
                        <?php if (!empty($faxes[$key])) : ?>
                            <div class="col-xl-4 col-lg-4 col-md-6 mb-4">
                                <div class="d-flex align-items-center align-content-center align-self-center">
                                    <div class="contact-page__icon">
                                        <span class="fa fa-fax"></span>
                                    </div>
                                    <div class="contact-page__content">
                                        <h3 class="contact-page__content-title"><?= lang("fax") ?></h3>
                                        <p><a href="tel:<?= @str_replace(" ", "", @$faxes[$key]) ?>" rel="dofollow" title="<?= lang("fax") ?>"><?= @$faxes[$key] ?></a></p>
                                    </div>
                                </div>
                            </div>
                        <?php endif ?>
                        <?php if (!empty($whatsapps[$key])) : ?>
                            <div class="col-xl-4 col-lg-4 col-md-6 mb-4">
                                <div class="d-flex align-items-center align-content-center align-self-center">
                                    <div class="contact-page__icon">
                                        <span class="fa fa-whatsapp"></span>
                                    </div>
                                    <div class="contact-page__content">
                                        <h3 class="contact-page__content-title"><?= lang("whatsapp") ?></h3>
                                        <p><a href="https://api.whatsapp.com/send?phone=<?= @str_replace(" ", "", @$whatsapps[$key]) ?>&amp;text=<?= urlencode(lang("hello") . " " . $settings->company_name) ?>." rel="dofollow" title="<?= lang("whatsapp") ?>"><?= @$whatsapps[$key] ?></a></p>
                                    </div>
                                </div>
                            </div>
                        <?php endif ?>
                        <div class="col-xl-4 col-lg-4 col-md-6">
                            <div class="d-flex align-items-center align-content-center align-self-center">
                                <div class="contact-page__icon">
                                    <span class="fa fa-envelope-open"></span>
                                </div>
                                <div class="contact-page__content">
                                    <h3 class="contact-page__content-title"><?= lang("mail") ?></h3>
                                    <p><a href="mailto:<?= $settings->email ?>" rel="dofollow" title="<?= lang("fax") ?>"><?= $settings->email ?></a></p>
                                </div>
                            </div>
                        </div>
                    </div>
                    <ul class="nav nav-justified border-top pt-3">
                        <?php if (!empty($settings->facebook)) : ?>
                            <li class="align-items-center my-auto py-auto align-self-center nav-item">
                                <a rel="dofollow" href="<?= $settings->facebook ?>" title="Facebook" target="_blank">
                                    <i class='fa fa-facebook color fa-2x'></i>
                                </a>
                            </li>
                        <?php endif ?>
                        <?php if (!empty($settings->twitter)) : ?>
                            <li class="align-items-center my-auto py-auto align-self-center nav-item">
                                <a rel="dofollow" href="<?= $settings->twitter ?>" title="Twitter" target="_blank">
                                    <i class='fa fa-twitter color fa-2x'></i>
                                </a>
                            </li>
                        <?php endif ?>
                        <?php if (!empty($settings->instagram)) : ?>
                            <li class="align-items-center my-auto py-auto align-self-center nav-item">
                                <a rel="dofollow" href="<?= $settings->instagram ?>" title="Instagram" target="_blank">
                                    <i class='fa fa-instagram color fa-2x'></i>
                                </a>
                            </li>
                        <?php endif ?>
                        <?php if (!empty($settings->linkedin)) : ?>
                            <li class="align-items-center my-auto py-auto align-self-center nav-item">
                                <a rel="dofollow" href="<?= $settings->linkedin ?>" title="Linkedin" target="_blank">
                                    <i class='fa fa-linkedin color fa-2x'></i>
                                </a>
                            </li>
                        <?php endif ?>
                        <?php if (!empty($settings->youtube)) : ?>
                            <li class="align-items-center my-auto py-auto align-self-center nav-item">
                                <a rel="dofollow" href="<?= $settings->youtube ?>" title="Youtube" target="_blank">
                                    <i class='fa fa-youtube color fa-2x'></i>
                                </a>
                            </li>
                        <?php endif ?>
                        <?php if (!empty($settings->medium)) : ?>
                            <li class="align-items-center my-auto py-auto align-self-center nav-item">
                                <a rel="dofollow" href="<?= $settings->medium ?>" title="Medium" target="_blank">
                                    <i class='fa fa-medium color fa-2x'></i>
                                </a>
                            </li>
                        <?php endif ?>
                        <?php if (!empty($settings->pinterest)) : ?>
                            <li class="align-items-center my-auto py-auto align-self-center nav-item">
                                <a rel="dofollow" href="<?= $settings->pinterest ?>" title="Pinterest" target="_blank">
                                    <i class='fa fa-pinterest color fa-2x'></i>
                                </a>
                            </li>
                        <?php endif ?>
                    </ul>
                <?php endforeach ?>
            </div>
        </div>
        <div class="team-details__bottom contact-page__bottom">
            <div class="row">
                <div class="col-xl-12">
                    <div class="comment-form-2">
                        <h3 class="comment-form-2__title"><?= lang("contactForm") ?></h3>
                        <form onsubmit="return false" enctype="multipart/form-data" method="POST" id="contact-form" class="comment-form-2__form contact-form-validated">
                            <div class="row">
                                <div class="col-xl-4">
                                    <div class="comment-form-2__input-box">
                                        <input type="text" name="full_name" id="full_name" placeholder="<?= lang("namesurname") ?>" required minlength="2" maxlength="70">
                                    </div>
                                </div>
                                <div class="col-xl-4">
                                    <div class="comment-form-2__input-box">
                                        <input type="email" name="email" id="email" placeholder="<?= lang("emailaddress") ?>" required>
                                    </div>
                                </div>
                                <div class="col-xl-4">
                                    <div class="comment-form-2__input-box">
                                        <input type="text" name="phone" id="phone" placeholder="<?= lang("phonenumber") ?>" required minlength="11" maxlength="20">
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-xl-12">
                                    <div class="comment-form-2__input-box">
                                        <input type="text" name="subject" id="subject" placeholder="<?= lang("subject") ?>" required>
                                    </div>
                                    <div class="comment-form-2__input-box text-message-box">
                                        <textarea name="comment" id="comment" cols="30" rows="8" placeholder="<?= lang("message") ?>" required></textarea>
                                    </div>
                                    <?php $securityPolicy = $this->general_model->get("pages", null, ["isActive" => 1, "id" => 3]) ?>
                                    <?php $kvkk = $this->general_model->get("pages", null, ["isActive" => 1, "id" => 6]) ?>
                                    <?php $securityPolicyUrl = '<a href="' . base_url(lang("routes_page") . "/" . $securityPolicy->url) . '" rel="dofollow" title="' . $securityPolicy->title . '">' . $securityPolicy->title . '</a>'; ?>
                                    <?php $kvkkUrl = '<a href="' . base_url(lang("routes_page") . "/" . $kvkk->url) . '" rel="dofollow" title="' . $kvkk->title . '">' . $kvkk->title . '</a>'; ?>
                                    <?php $companyName = '<a href="' . base_url() . '" rel="dofollow" title="' . $settings->company_name . '">' . $settings->company_name . '</a>'; ?>
                                    <?php $kvkkMessage = str_replace("@kvkk@", $kvkkUrl, lang("kvkkMessage")) ?>
                                    <?php $kvkkMessage = str_replace("@companyName@", $companyName, $kvkkMessage) ?>
                                    <?php $kvkkMessage = str_replace("@securityPolicy@", $securityPolicyUrl, $kvkkMessage) ?>
                                    <div class="comment-form-2__input-box">
                                        <div class="form-check d-flex">
                                            <input class="form-check-input" type="checkbox" name="kvkkMessage" required id="kvkkMessage" style="min-width: 2em;min-height:2em;">
                                            <label class="form-check-label" for="flexCheckDefault">
                                                <?= $kvkkMessage ?>
                                            </label>
                                        </div>
                                    </div>
                                    <div class="comment-form-2__btn-box">
                                        <button type="submit" class=" thm-btn comment-form-2__btn btnSubmitForm" aria-label="<?= $settings->company_name ?>" type="submit" data-url="<?= base_url(lang("routes_contact-form")) ?>"><?= lang("submit") ?></button>
                                    </div>
                                </div>
                            </div>
                            <input type="hidden" name="<?= $this->security->get_csrf_token_name(); ?>" value="<?= $this->security->get_csrf_hash(); ?>" />
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<!--contact Page End-->