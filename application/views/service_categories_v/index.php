<?php defined('BASEPATH') or exit('No direct script access allowed'); ?>
<!--Page Header Start-->
<section class="page-header">
    <div class="page-header__bg" style="background-image: url(<?= get_picture("settings_v", $settings->category_logo) ?>);"></div>
    <div class="container">
        <div class="page-header__inner">
            <h2><?= $page_title ?></h2>
        </div>
    </div>
</section>
<!--Page Header End-->

<!--Project V-1 Start-->
<section class="project-v-1">
    <div class="container-fluid px-5">
        <?php if (!empty($service_categories)) : ?>
            <div class="row align-items-stretch align-self-stretch align-content-stretch">
                <?php foreach ($service_categories as $k => $v) : ?>
                    <!--Project One Single Start-->
                    <div class="col-xl-3 col-lg-6 col-md-6 mb-3">
                        <div class="project-one__single h-100">
                            <div class="project-one__img">
                                <img data-src="<?= get_picture("service_categories_v", $v->img_url) ?>" class="img-fluid lazyload" alt="<?= $v->title ?>" title="<?= $v->title ?>" />
                            </div>
                            <div class="project-one__content-box">
                                <div class="project-one__content">
                                    <h3 class="project-one__title"><a href="<?= base_url(lang("routes_services") . "/" . $v->seo_url) ?>" rel="dofollow" title="<?= lang("viewServices") ?>"><?= $v->title ?></a></h3>
                                </div>
                                <div class="project-one__btn">
                                    <a href="<?= base_url(lang("routes_services") . "/" . $v->seo_url) ?>" rel="dofollow" title="<?= lang("viewServices") ?>"><i class="fa fa-arrow-right"></i></a>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!--Project One Single End-->
                <?php endforeach ?>
                <div class="col-12 text-center">
                    <div class="blog-page__pagination">
                        <?= @$links ?>
                    </div>
                </div>
            </div>
        <?php endif ?>
        <?php if (empty($service_categories)) : ?>
            <div class="alert alert-warning rounded-0 shadow" role="alert">
                <h4 class="alert-heading"><?= lang("warning") ?></h4>
                <p><?= lang("weCantFindAnyServiceCategoriesWithYourSearch") ?></p>
                <hr>
                <p class="mb-0"><?= lang("youCanSearchDifferentServiceCategories") ?></p>
            </div>
        <?php endif ?>


    </div>
</section>
<!--Project V-1 End-->