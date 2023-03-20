<?php defined('BASEPATH') or exit('No direct script access allowed'); ?>
<?php if (!empty($slides)) : ?>
    <!--Main Slider Start-->
    <section class="main-slider-two clearfix">
        <div class="swiper-container thm-swiper__slider" data-swiper-options='{"slidesPerView": 1, "loop": true,
                "effect": "fade",
                "pagination": {
                "el": "#main-slider-pagination",
                "type": "bullets",
                "clickable": true
                },
                "navigation": {
                "nextEl": "#main-slider__swiper-button-next",
                "prevEl": "#main-slider__swiper-button-prev"
                },
                "autoplay": {
                "delay": 2000
                }}'>
            <div class="swiper-wrapper">
                <?php $i = 0 ?>
                <?php foreach ($slides as $key => $value) : ?>
                    <?php if (strtotime($value->sharedAt) <= strtotime("now")) : ?>
                        <?php if ($value->allowButton) : ?>
                            <?php $sUrl = null; ?>
                            <?php if (!empty($value->button_url)) : ?>
                                <?php $sUrl = $value->button_url ?>
                            <?php endif ?>
                            <?php if (!empty($value->category_id) && $value->category_id > 0) : ?>
                                <?php $sCategory = $this->general_model->get("service_categories", null, ["isActive" => 1, "id" => $value->category_id]); ?>
                                <?php if (!empty($sCategory)) : ?>
                                    <?php $sUrl = base_url(lang("routes_services") . "/" . $sCategory->seo_url) ?>
                                <?php endif ?>
                            <?php endif ?>
                            <?php if (!empty($value->service_id) && $value->service_id > 0) : ?>
                                <?php $sService = $this->general_model->get("services", null, ["isActive" => 1, "id" => $value->service_id]); ?>
                                <?php if (!empty($sService)) : ?>
                                    <?php $sUrl = base_url(lang("routes_services") . "/" . lang("routes_service") . "/" . $sService->url) ?>
                                <?php endif ?>
                            <?php endif ?>
                            <?php if (!empty($value->page_id) && $value->page_id > 0) : ?>
                                <?php $sPage = $this->general_model->get("service_categories", null, ["isActive" => 1, "id" => $value->page_id]); ?>
                                <?php if (!empty($sPage)) : ?>
                                    <?php $sUrl = base_url(lang("routes_services") . "/" . $sPage->url) ?>
                                <?php endif ?>
                            <?php endif ?>
                            <?php if (!empty($value->sector_id) && $value->sector_id > 0) : ?>
                                <?php $sSector = $this->general_model->get("sectors", null, ["isActive" => 1, "id" => $value->sector_id]); ?>
                                <?php if (!empty($sSector)) : ?>
                                    <?php $sUrl = base_url(lang("routes_sectors") . "/" . lang("routes_sector_detail") . "/" . $sSector->url) ?>
                                <?php endif ?>
                            <?php endif ?>
                        <?php endif ?>
                        <div class="swiper-slide">
                            <div class="image-layer-two">
                                <?php if (!empty($value->allowButton) && !empty($value->button_caption) && !empty($sUrl)) : ?>
                                    <a rel="dofollow" title="<?= $value->title ?>" href="<?= $sUrl ?>">
                                        <img data-src="<?= get_picture("slides_v", $value->img_url) ?>" alt="<?= $value->title ?>" class="lazyload img-fluid w-100">
                                    </a>
                                <?php else : ?>
                                    <img data-src="<?= get_picture("slides_v", $value->img_url) ?>" alt="<?= $value->title ?>" class="lazyload img-fluid w-100">
                                <?php endif ?>
                            </div>
                            <!-- /.image-layer -->
                        </div>
                        <?php $i++ ?>
                    <?php endif ?>
                <?php endforeach ?>
            </div>

            <!-- If we need navigation buttons -->
            <div class="main-slider-two__nav">
                <div class="swiper-button-prev" id="main-slider__swiper-button-next">
                    <i class="fa fa-arrow-left"></i>
                </div>
                <div class="swiper-button-next" id="main-slider__swiper-button-prev">
                    <i class="fa fa-arrow-right"></i>
                </div>
            </div>

        </div>
    </section>
    <!--Main Slider End-->



    <!-- BEGIN: Slider Section -->
    <section class="sliderSection02 mb117">
        <div class="rev_slider_wrapper">
            <div id="rev_slider_2" class="rev_slider fullwidthabanner" style="display:none;" data-version="5.4.1">
                <ul>
                    <?php $i = 0 ?>
                    <?php foreach ($slides as $key => $value) : ?>
                        <?php if (strtotime($value->sharedAt) <= strtotime("now")) : ?>
                            <?php if ($value->allowButton) : ?>
                                <?php $sUrl = null; ?>
                                <?php if (!empty($value->button_url)) : ?>
                                    <?php $sUrl = $value->button_url ?>
                                <?php endif ?>
                                <?php if (!empty($value->category_id) && $value->category_id > 0) : ?>
                                    <?php $sCategory = $this->general_model->get("service_categories", null, ["isActive" => 1, "id" => $value->category_id]); ?>
                                    <?php if (!empty($sCategory)) : ?>
                                        <?php $sUrl = base_url(lang("routes_services") . "/" . $sCategory->seo_url) ?>
                                    <?php endif ?>
                                <?php endif ?>
                                <?php if (!empty($value->service_id) && $value->service_id > 0) : ?>
                                    <?php $sService = $this->general_model->get("services", null, ["isActive" => 1, "id" => $value->service_id]); ?>
                                    <?php if (!empty($sService)) : ?>
                                        <?php $sUrl = base_url(lang("routes_services") . "/" . lang("routes_service") . "/" . $sService->url) ?>
                                    <?php endif ?>
                                <?php endif ?>
                                <?php if (!empty($value->page_id) && $value->page_id > 0) : ?>
                                    <?php $sPage = $this->general_model->get("service_categories", null, ["isActive" => 1, "id" => $value->page_id]); ?>
                                    <?php if (!empty($sPage)) : ?>
                                        <?php $sUrl = base_url(lang("routes_services") . "/" . $sPage->url) ?>
                                    <?php endif ?>
                                <?php endif ?>
                                <?php if (!empty($value->sector_id) && $value->sector_id > 0) : ?>
                                    <?php $sSector = $this->general_model->get("sectors", null, ["isActive" => 1, "id" => $value->sector_id]); ?>
                                    <?php if (!empty($sSector)) : ?>
                                        <?php $sUrl = base_url(lang("routes_sectors") . "/" . lang("routes_sector_detail") . "/" . $sSector->url) ?>
                                    <?php endif ?>
                                <?php endif ?>
                            <?php endif ?>
                            <li data-index="rs-<?= $i ?>" data-transition="random-premium" data-slotamount="default" data-hideafterloop="0" data-hideslideonmobile="off" data-easein="Power3.easeInOut" data-easeout="Power3.easeInOut" data-masterspeed="1000" data-thumb="" data-rotate="0" data-saveperformance="off" data-title="" data-param1="01" data-param2="" data-param3="" data-param4="" data-param5="" data-param6="" data-param7="" data-param8="" data-param9="" data-param10="" data-description="">
                                <img src="<?= get_picture("slides_v", $value->img_url) ?>" alt="<?= $value->title ?>" data-bgposition="center center" data-bgfit="cover" data-bgrepeat="no-repeat" data-bgparallax="0" class="rev-slidebg lazyload" data-no-retina />
                                <?php if (!empty($value->allowButton) && !empty($value->button_caption) && !empty($sUrl)) : ?>
                                    <div class="tp-caption ws_nowrap textLayer" data-x="['center','center','center','center']" data-hoffset="['0','0','0','0']" data-y="['middle','middle','middle','middle']" data-voffset="['144','144','134','80']" data-fontsize="16" data-fontweight="500" data-lineheight="55" data-width="['auto','auto','100%','100%']" data-height="auto" data-whitesapce="normal" data-color="#FFFFFF" data-type="text" data-responsive_offset="off" data-frames='[{"delay":1300,"speed":600,"frame":"0","from":"y:[100%];z:0;rX:0deg;rY:0;rZ:0;sX:1;sY:1;skX:0;skY:0;opacity:0;","to":"o:1;","ease":"power4.inOut"},{"delay":"wait","speed":300,"frame":"999","to":"auto:auto;","ease":"power3.inOut"}]' data-textAlign="['center','center','center','center']" data-paddingtop="['0','0','0','0']" data-paddingright="['0','0','0','0']" data-paddingbottom="['0','0','0','0']" data-paddingleft="['0','0','0','0']"><a href="<?= $sUrl ?>" rel="dofollow" class="ulinaBTN ulinaSliderBTN text-capitalize" title="<?= $value->button_caption ?>"><span>Explore Now</span></a></div>
                                <?php endif ?>
                            </li>
                            <?php $i++ ?>
                        <?php endif ?>
                    <?php endforeach ?>
                </ul>
            </div>
        </div>
    </section>
    <!-- END: Slider Section -->
<?php endif ?>


<?php $this->load->view("includes/testimonial") ?>


<?php if (!empty($service_categories)) : ?>
    <!--Project V-1 Start-->
    <section class="project-v-1">
        <div class="container-fluid px-5">
            <div class="section-title text-center">
                <span class="section-title__tagline"><?= $settings->company_name ?></span>
                <div class="section-title-shape">
                    <img class="img-fluid lazyload" loading="lazy" data-src="<?= asset_url("public/images/shapes/section-title-shape-1.webp") ?>" alt="<?= $settings->company_name ?>">
                </div>
                <h2 class="section-title__title"><?= lang("service_categories") ?></h2>
            </div>
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
            </div>
        </div>
    </section>
    <!--Project V-1 End-->
<?php endif ?>

<!--=================  About Section Start Here ================= -->
<?php if (!empty($pages[array_keys($pages)[0]])) : ?>
    <?php $aboutPage = $pages[array_keys($pages)[0]] ?>
    <?php if ($aboutPage->id == 1) : ?>
        <!--Why Choose Two Start-->
        <section class="why-choose-two why-choose-three">
            <div class="container">
                <div class="row">
                    <?php if (!empty($aboutPage->img_url)) : ?>
                        <div class="col-xl-6">
                            <div class="why-choose-two__left">
                                <div class="why-choose-two__img-1 wow slideInLeft" data-wow-delay="100ms" data-wow-duration="2500ms">
                                    <img loading="lazy" class="img-fluid lazyload" data-src="<?= get_picture("pages_v", $aboutPage->img_url) ?>" title="<?= $aboutPage->title ?>" alt="<?= $aboutPage->title ?>">
                                </div>
                            </div>
                        </div>
                    <?php endif ?>
                    <div class="col-xl-6">
                        <div class="why-choose-two__right">
                            <div class="section-title text-left">
                                <span class="section-title__tagline"><?= $settings->company_name ?></span>
                                <div class="section-title-shape">
                                    <img class="img-fluid lazyload" loading="lazy" data-src="<?= asset_url("public/images/shapes/section-title-shape-1.webp") ?>" alt="<?= $settings->company_name ?>">
                                </div>
                                <h2 class="section-title__title"><?= $aboutPage->title ?></h2>
                            </div>
                            <p class="why-choose-two__text-1"><?= nl2br(strip_tags(mb_word_wrap($aboutPage->content, 475, "..."))) ?></p>
                            <a class="thm-btn services-one__bottom-btn mt-3" href="<?= base_url(lang("routes_page") . "/" . $aboutPage->url) ?>" rel="dofollow" title="<?= $aboutPage->title ?>">
                                <span><?= $aboutPage->title ?></span>
                            </a>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!--Why Choose Two End-->
    <?php endif ?>
<?php endif ?>
<!--================= About Section End Here ================= -->

<?php if (!empty($our_works)) : ?>
    <!--Project V-1 Start-->
    <section class="project-v-1">
        <div class="container">
            <div class="section-title text-center">
                <span class="section-title__tagline"><?= $settings->company_name ?></span>
                <div class="section-title-shape">
                    <img class="img-fluid lazyload" loading="lazy" data-src="<?= asset_url("public/images/shapes/section-title-shape-1.webp") ?>" alt="<?= $settings->company_name ?>">
                </div>
                <h2 class="section-title__title"><?= lang("ourWorks") ?></h2>
            </div>
            <div class="row align-items-stretch align-self-stretch align-content-stretch">
                <?php foreach ($our_works as $key => $value) : ?>
                    <!--Project One Single Start-->
                    <div class="col-xl-4 col-lg-6 col-md-6 mb-3">
                        <div class="project-one__single h-100">
                            <div class="project-one__img">
                                <img data-src="<?= get_picture("our_works_v", $value->img_url) ?>" title="<?= $value->title ?>" alt="<?= $value->title ?>" class="lazyload img-fluid w-100">
                            </div>
                            <div class="project-one__content-box">
                                <div class="project-one__content">
                                    <h3 class="project-one__title"><?= $value->title ?></h3>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!--Project One Single End-->
                <?php endforeach ?>
            </div>
        </div>
    </section>
    <!--Project V-1 End-->
<?php endif ?>

<?php if (empty($homeitemsFooter)) : ?>
    <!--=================  Popular Topics Section Start Here ================= -->
    <div class="react_populars_topics react_populars_topics2 pt---60 pb---60 graybg-home">
        <div class="container">
            <div class="row">
                <?php foreach ($homeitemsFooter as $key => $value) : ?>
                    <?php if (strtotime($value->sharedAt) <= strtotime("now")) : ?>
                        <div class="col-md-3 mb-3 align-items-stretch align-content-stretch align-self-stretch">
                            <div class="item__inner h-100">
                                <div class="icon">
                                    <img width="44" height="40" class="lazyload" data-src="<?= get_picture("homeitems_v", $value->img_url) ?>" title="<?= $value->title ?>" alt="<?= $value->title ?>">
                                </div>
                                <div class="react-content">
                                    <h3 class="react-title"><?= $value->title ?></h3>
                                    <?= $value->content ?>
                                </div>
                            </div>
                        </div>
                    <?php endif ?>
                <?php endforeach ?>
            </div>
        </div>
    </div>
    <!--=================  Popular Topics Section End Here ================= -->
<?php endif ?>

<?php if (!empty($instagramPosts)) : ?>
    <?php $userName = str_replace("/", "", (str_replace("https://www.instagram.com/", "", str_replace("https://instagram.com/", "", $this->viewData->settings->instagram)))); ?>

    <section class="why-choose-one">
        <div class="why-choose-one__shape-4 float-bob-x" style="background-image: url(<?= asset_url("public/images/shapes/why-choose-one-shape-4.webp") ?>);"></div>
        <div class="why-choose-one__shape-2 float-bob-y">
            <img class="lazyload img-fluid" loading="lazy" data-src="<?= asset_url("public/images/shapes/why-choose-one-shape-2.webp") ?>" alt="<?= $settings->company_name ?>">
        </div>
        <div class="why-choose-one__shape-3 float-bob-y">
            <img class="lazyload img-fluid" loading="lazy" data-src="<?= asset_url("public/images/shapes/why-choose-one-shape-3.webp") ?>" alt="<?= $settings->company_name ?>">
        </div>
        <div class="why-choose-one__shape-5 float-bob-x"></div>
        <div class="container">
            <div class="row">
                <div class="col-xl-12">
                    <div class="why-choose-one__right mx-0">
                        <div class="section-title text-left">
                            <span class="section-title__tagline text-center"><?= $settings->company_name ?></span>
                            <div class="section-title-shape text-center">
                                <img class="lazyload img-fluid" loading="lazy" data-src="<?= asset_url("public/images/shapes/section-title-shape-1.webp") ?>" alt="<?= $settings->company_name ?>">
                            </div>
                            <h2 class="section-title__title fs-1 text-center"><?= lang("followUsOnInstagram") ?> <a rel="nofollow" href="<?= $settings->instagram ?>" target="_blank" title="Instagram">@<?= $userName ?></a></h2>
                        </div>
                    </div>
                </div>
                <div class="col-xl-12">
                    <div class="why-choose-one__left mx-0">
                        <div class="row align-items-stretch align-self-stretch align-content-stretch">
                            <?php foreach ($instagramPosts as $mediaKey => $mediaValue) : ?>
                                <div class="col-12 col-sm-6 col-md-6 col-lg-3 mb-3">
                                    <div class="why-choose-one__img-1 wow slideInLeft animated h-100 d-block rounded" data-wow-delay="100ms" data-wow-duration="2500ms" style="visibility: visible; animation-duration: 2500ms; animation-delay: 100ms; animation-name: slideInLeft;">
                                        <a rel="nofollow" title="<?= $settings->company_name ?>" href="<?= $mediaValue->link ?>" target="_blank" class="instagramPhoto imgPopup rounded">
                                            <img data-src="<?= get_picture("instastory", $mediaValue->img_url) ?>" class="img-fluid lazyload rounded" alt="<?= $settings->company_name ?>">
                                        </a>
                                    </div>
                                </div>
                            <?php endforeach ?>
                        </div>

                    </div>
                </div>

            </div>
        </div>
    </section>
<?php endif ?>