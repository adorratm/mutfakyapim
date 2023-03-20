<?php defined('BASEPATH') or exit('No direct script access allowed'); ?>
<!--Page Header Start-->
<section class="page-header">
    <div class="page-header__bg" style="background-image: url(<?= !empty($services_category) && !empty($services_category->img_url) ? get_picture("service_categories_v", $services_category->banner_url) : get_picture("settings_v", $settings->service_logo) ?>);"></div>
    <div class="container">
        <div class="page-header__inner">
            <h2><?= $page_title ?></h2>
        </div>
    </div>
</section>
<!--Page Header End-->

<!--Services Page Start-->
<section class="services-page">
    <div class="container">
        <div class="row align-items-stretch align-self-stretch align-content-stretch">
            <?php if (!empty($services)) : ?>
                <?php foreach ($services as $key => $value) : ?>
                    <!--Services Two Single Start-->
                    <div class="col-xl-4 col-lg-4 col-md-6 mb-3 wow fadeInUp" data-wow-delay="100ms">
                        <div class="services-two__single h-100">
                            <div class="services-two__img">
                                <img loading="lazy" width="1000" height="1000" data-src="<?= get_picture("services_v", $value->img_url) ?>" alt="<?= $value->title ?>" title="<?= $value->title ?>" class="img-fluid lazyload" />
                                <div class="services-two__icon">
                                    <img loading="lazy" width="1000" height="1000" data-src="<?= get_picture("service_categories_v", $services_category->img_url) ?>" alt="<?= $services_category->title ?>" title="<?= $services_category->title ?>" class="img-fluid lazyload" />
                                </div>
                            </div>
                            <div class="services-two__content-box">
                                <div class="services-two__title">
                                    <h3><a href="<?= base_url(lang("routes_services") . "/" . lang("routes_service") . "/" . $value->seo_url) ?>" rel="dofollow" title="<?= $value->title ?>"><?= $value->title ?></a></h3>
                                </div>
                                <p class="services-two__text"><?= @mb_word_wrap($value->description, 150, "...") ?></p>
                                <div class="services-two__btn-box">
                                    <a href="<?= base_url(lang("routes_services") . "/" . lang("routes_service") . "/" . $value->seo_url) ?>" rel="dofollow" title="<?= $value->title ?>" class="thm-btn"><?= lang("viewService") ?><i class="fa fa-arrow-right"></i></a>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!--Services Two Single End-->
                <?php endforeach ?>
                <div class="col-12 text-center">
                    <div class="blog-page__pagination">
                        <?= @$links ?>
                    </div>
                </div>
            <?php endif ?>
            <?php if (empty($services)) : ?>
                <div class="col-12">
                    <div class="alert alert-warning rounded-0 shadow" role="alert">
                        <h4 class="alert-heading"><?= lang("warning") ?></h4>
                        <p><?= lang("weCantFindAnyServicesWithYourSearch") ?></p>
                        <hr>
                        <p class="mb-0"><?= lang("youCanSearchDifferentServices") ?></p>
                    </div>
                </div>
            <?php endif ?>
        </div>
    </div>
</section>
<!--Services Page End-->