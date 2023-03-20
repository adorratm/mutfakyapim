<?php defined('BASEPATH') or exit('No direct script access allowed'); ?>
<!--Page Header Start-->
<section class="page-header">
    <div class="page-header__bg" style="background-image: url(<?= get_picture("settings_v", $settings->about_logo) ?>);"></div>
    <div class="container">
        <div class="page-header__inner">
            <h2><?= lang("pageNotFound") ?></h2>
        </div>
    </div>
</section>
<!--Page Header End-->

<!--Error Page Start-->
<section class="error-page">
    <div class="container">
        <div class="row">
            <div class="col-xl-12">
                <div class="error-page__inner">
                    <div class="error-page__title-box">
                        <h2 class="error-page__title">404</h2>
                        <h2 class="error-page__title-2">404</h2>
                    </div>
                    <h3 class="error-page__tagline"><i class="fa-regular fa-face-sad-cry"></i> <?= lang("pageNotFound") ?></h3>
                    <p class="error-page__text"><?= lang("404Desc") ?></p>
                    <a rel="dofollow" href="<?= base_url() ?>" title="<?= lang("404Home") ?>" class="thm-btn error-page__btn"><?= lang("404Home") ?></a>
                </div>
            </div>
        </div>
    </div>
</section>
<!--Error Page End-->