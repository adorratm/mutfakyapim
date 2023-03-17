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

<!-- BEGIN: 404 Section -->
<section class="fofPage">
    <div class="container">
        <div class="row">
            <div class="col-lg-12">
                <div class="fofContent text-center">
                    <h2>404</h2>
                    <h3><i class="fa-regular fa-face-sad-cry"></i> <?= lang("pageNotFound") ?></h3>
                    <p><?= lang("404Desc") ?></p>
                    <a rel="dofollow" href="<?= base_url() ?>" title="<?= lang("404Home") ?>" class="ulinaBTN"><span><?= lang("404Home") ?></span></a>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- END: 404 Section -->


