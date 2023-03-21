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

<!--Error Page Start-->
<section class="error-page">
    <div class="container">
        <div class="row text-center justify-content-center">
            <div class="col-xl-12 text-center justify-content-center">
                <div class="error-page__inner">
                    <div class="error-page__title-box">
                        <h2 class="error-page__title"><?= lang("payment_error") ?></h2>
                        <h2 class="error-page__title-2"><?= lang("payment_error") ?></h2>
                    </div>
                    <img loading="lazy" data-src="<?= asset_url("public/images/Error_96px.webp") ?>" alt="<?= $settings->company_name ?>" class="img-fluid lazyload" width="500" height="500">
                    <h3 class="error-page__tagline"><?= lang("paymentErrorMessage") ?></h3>
                    <a rel="dofollow" href="<?= base_url() ?>" title="<?= lang("goToHome") ?>" class="thm-btn error-page__btn"><?= lang("goToHome") ?></a>
                </div>
            </div>
        </div>
    </div>
</section>
<!--Error Page End-->