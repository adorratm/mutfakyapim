<?php defined('BASEPATH') or exit('No direct script access allowed'); ?>
<!--Page Header Start-->
<section class="page-header">
    <div class="page-header__bg" style="background-image: url(<?= get_picture("settings_v", $settings->service_detail_logo) ?>);"></div>
    <div class="container">
        <div class="page-header__inner">
            <h2><?= $page_title ?></h2>
        </div>
    </div>
</section>
<!--Page Header End-->

<!-- BEGIN: Shop Details Section -->
<section class="shopDetailsPageSection">
    <div class="container">
        <div class="row">
            <div class="col-lg-6">
                <div class="serviceGalleryWrap">
                    <div id="carouselExample" class="carousel slide" data-bs-ride="true">
                        <div class="carousel-inner lightgallery serviceGallery">
                            <?php $i = 0 ?>
                            <?php if (!empty($service_own_images)) : ?>
                                <?php foreach ($service_own_images as $k => $v) : ?>
                                    <?php if ($v->id == $service->id) : ?>
                                        <div class="carousel-item <?= $i == 0 ? "active" : null ?>" data-index="<?= $i ?>">
                                            <a rel="dofollow" title="<?= $service->title ?>" data-exthumbimage="<?= get_picture("services_v", $v->url) ?>" href="<?= get_picture("services_v", $v->url) ?>" data-index="<?= $i ?>" class="pgImage lightimg">
                                                <img width="1000" height="1000" loading="lazy" data-src="<?= get_picture("services_v", $v->url) ?>" title="<?= $service->title ?>" alt="<?= $service->title ?>" data-zoom-image="<?= get_picture("services_v", $v->url) ?>" class="rounded img-fluid lazyload w-100 d-block">
                                            </a>
                                        </div>
                                        <?php $i++ ?>
                                    <?php endif ?>
                                <?php endforeach ?>
                            <?php endif ?>
                            <button aria-label="<?= $settings->company_name ?>" style="box-shadow:unset!important" class="carousel-control-prev" type="button" data-bs-target="#carouselExample" data-bs-slide="prev">
                                <span class="carousel-control-prev-icon bg-secondary border rounded" aria-hidden="true"></span>
                                <span class="visually-hidden">Previous</span>
                            </button>
                            <button aria-label="<?= $settings->company_name ?>" style="box-shadow:unset!important" class="carousel-control-next" type="button" data-bs-target="#carouselExample" data-bs-slide="next">
                                <span class="carousel-control-next-icon bg-secondary border rounded" aria-hidden="true"></span>
                                <span class="visually-hidden">Next</span>
                            </button>
                        </div>
                        <div class="carousel-indicators serviceGalleryThumb position-relative mx-0 mx-xxl-0 mt-3">
                            <div class="owl-thumbs d-flex">
                                <?php $i = 0 ?>
                                <?php if (!empty($service_own_images)) : ?>
                                    <?php foreach ($service_own_images as $k => $v) : ?>
                                        <?php if ($v->id == $service->id) : ?>
                                            <div data-bs-target="#carouselExample" style="max-width: 135px;" class="owl-thumb-item border <?= ($i == 0 ? "active" : null) ?>" data-bs-touch="true" data-bs-slide-to="<?= $i ?>" data-bs-image="<?= get_picture("services_v", $v->url) ?>">
                                                <img width="1000" height="1000" loading="lazy" data-src="<?= get_picture("services_v", $v->url) ?>" title="<?= $service->title ?>" alt="<?= $service->title ?>" class="rounded lazyload img-fluid w-100 d-block">
                                            </div>
                                            <?php $i++ ?>
                                        <?php endif ?>
                                    <?php endforeach ?>
                                <?php endif; ?>
                            </div>

                            <button aria-label="<?= $settings->company_name ?>" style="box-shadow:unset!important" class="carousel-control-prev bg-transparent" type="button" data-bs-target="#carouselExample" data-bs-slide="prev">
                                <span class="carousel-control-prev-icon bg-secondary border rounded" aria-hidden="true"></span>
                                <span class="visually-hidden">Previous</span>
                            </button>
                            <button aria-label="<?= $settings->company_name ?>" style="box-shadow:unset!important" class="carousel-control-next bg-transparent" type="button" data-bs-target="#carouselExample" data-bs-slide="next">
                                <span class="carousel-control-next-icon bg-secondary border rounded" aria-hidden="true"></span>
                                <span class="visually-hidden">Next</span>
                            </button>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-lg-6">
                <div class="serviceContent">
                    <?php if ($service->category_title) : ?>
                        <div class="pcCategory">
                            <a rel="dofollow" title="<?= $service->category_title ?>" href="<?= base_url(lang("routes_services") . "/" . $service->category_seo_url) ?>"><?= $service->category_title ?></a>
                        </div>
                    <?php endif ?>
                    <h2><?= $service->title ?></h2>
                    <?php if (get_active_user()) : ?>
                        <div class="pi01Price">
                            <?php if (!empty($service->price) || !empty($service->discounted_price)) : ?>
                                <ins><?= !empty($service->discounted_price) ? $service->discounted_price : $service->price ?> <?= $symbol ?></ins>
                            <?php endif ?>
                            <?php if (!empty($service->discounted_price) && $service->discounted_price > 0) : ?>
                                <del><?= $service->price ?> <?= $symbol ?></del>
                            <?php endif ?>
                        </div>
                    <?php endif ?>

                    <div class="pcExcerpt">
                        <?= $service->content ?>
                    </div>
                    <div class="pcVariations">
                        <div class="pcVariation align-items-center align-self-center align-content-center pcv2">
                            <span><?= lang("serviceCategory") ?> : </span>
                            <div class="pcvContainer ms-2">
                                <div class="pswItem">
                                    <input checked type="radio" name="category" value="<?= $service->category_id ?>" id="<?= seo($service->category) ?>-<?= $service->category_id ?>">
                                    <label for="<?= seo($service->category) ?>-<?= $service->category_id ?>"><?= $service->category ?></label>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="pcMeta">
                        <p>
                            <span><?= lang("serviceBarcode") ?> : </span>
                            <a class="ms-2" href="javascript:void(0);"><?= $service->barcode ?></a>
                        </p>
                        <p class="pcmSocial border rounded p-3" style="width: fit-content;">
                            <span class="me-2"><?= lang("shareService") ?> : </span>
                            <a class="fac" rel="nofollow" title="Facebook" target="_blank" href="https://www.facebook.com/sharer/sharer.php?u=<?= urlencode(str_replace("tr/index.php/", "", current_url())) ?>&t=<?= urlencode(str_replace("tr/index.php/", "", current_url())) ?>"><i class="fa-brands fa-facebook"></i></a>
                            <a class="twi" rel="nofollow" title="Twitter" target="_blank" href="https://twitter.com/intent/tweet?text=<?= urlencode(str_replace("tr/index.php/", "", current_url())) ?>&t=<?= urlencode(str_replace("tr/index.php/", "", current_url())) ?>"><i class="fa-brands fa-twitter"></i></a>
                            <a class="lin" rel="nofollow" title="Linkedin" target="_blank" href="https://www.linkedin.com/sharing/share-offsite/?url=<?= urlencode(str_replace("tr/index.php/", "", current_url())) ?>&title=<?= urlencode($service->title) ?>"><i class="fa-brands fa-linkedin"></i></a>
                            <a class="ins" rel="nofollow" title="Pinterest" target="_blank" href="https://pinterest.com/pin/create/button/?url=<?= urlencode(str_replace("tr/index.php/", "", current_url())) ?>&description=<?= urlencode($service->title) ?>"><i class="fa-brands fa-pinterest"></i></a>
                            <a class="ins" rel="nofollow" title="Reddit" target="_blank" href="https://www.reddit.com/submit?url=<?= urlencode(str_replace("tr/index.php/", "", current_url())) ?>&title=<?= urlencode($service->title) ?>"><i class="fa-brands fa-reddit"></i></a>
                            <a class="ins" rel="nofollow" title="Whatsapp" target="_blank" href="https://wa.me/?text=<?= urlencode(str_replace("tr/index.php/", "", current_url())) ?>"><i class="fa-brands fa-whatsapp"></i></a>
                        </p>
                    </div>
                </div>
            </div>
        </div>
        <?php if (!empty(clean($service->description)) || !empty(clean($service->features))) : ?>
            <div class="row serviceTabRow">
                <div class="col-lg-12">
                    <ul class="nav serviceDetailsTab" id="serviceDetailsTab" role="tablist">
                        <?php if (!empty(clean($service->description))) : ?>
                            <li role="presentation">
                                <button class="active" id="<?= seo(lang("serviceDescription")) ?>-tab" data-bs-toggle="tab" data-bs-target="#<?= seo(lang("serviceDescription")) ?>" type="button" role="tab" aria-controls="<?= seo(lang("serviceDescription")) ?>" aria-selected="true"><?= lang("serviceDescription") ?></button>
                            </li>
                        <?php endif ?>
                        <?php if (!empty(clean($service->features))) : ?>
                            <li role="presentation">
                                <button <?= empty(clean($service->description)) ? "class='active'" : null ?> id="<?= seo(lang("serviceFeatures")) ?>-tab" data-bs-toggle="tab" data-bs-target="#<?= seo(lang("serviceFeatures")) ?>" type="button" role="tab" aria-controls="<?= seo(lang("serviceFeatures")) ?>" aria-selected="false" tabindex="-1"><?= lang("serviceFeatures") ?></button>
                            </li>
                        <?php endif ?>
                    </ul>
                    <div class="tab-content" id="desInfoRev_content">
                        <?php if (!empty(clean($service->description))) : ?>
                            <div class="tab-pane fade show active" id="<?= seo(lang("serviceDescription")) ?>" role="tabpanel" aria-labelledby="<?= seo(lang("serviceDescription")) ?>-tab" tabindex="0">
                                <div class="serviceDescContentArea">
                                    <?= $service->description ?>
                                </div>
                            </div>
                        <?php endif ?>
                        <?php if (!empty(clean($service->features))) : ?>
                            <div class="tab-pane fade <?= empty(clean($service->description)) ? "show active" : null ?>" id="<?= seo(lang("serviceFeatures")) ?>" role="tabpanel" aria-labelledby="<?= seo(lang("serviceFeatures")) ?>-tab" tabindex="0">
                                <div class="additionalContentArea">
                                    <?= $service->features ?>
                                </div>
                            </div>
                        <?php endif ?>
                    </div>
                </div>
            </div>
        <?php endif ?>
        <?php $this->load->view("includes/serviceSlider", ["title" => lang("sameServices"), "data" => $same_services]); ?>
    </div>
</section>
<!-- END: Shop Details Section -->

<script>
    window.addEventListener('DOMContentLoaded', () => {
        if (($('#lightgallery, .lightgallery').length > 0)) {
            $('#lightgallery, .lightgallery').lightGallery({
                selector: '.lightimg',
                loop: !0,
                thumbnail: !0,
                exThumbImage: 'data-exthumbimage',
                download: false,
            })
        }
        $(".carousel").on("slid.bs.carousel", (event) => {
            $(".owl-thumb-item:not('.d-none')[data-bs-slide-to=" + event.from + "]").removeClass("active");
            $(".owl-thumb-item:not('.d-none')[data-bs-slide-to=" + event.to + "]").addClass("active");
            let x = $(".owl-thumb-item.active:not('.d-none')[data-bs-slide-to=" + event.to + "]").width();
            $('.owl-thumbs').animate({
                scrollLeft: event.to * x
            }, 500);
        });
    });
</script>