<?php defined('BASEPATH') or exit('No direct script access allowed'); ?>
<?php if (!empty($data)) : ?>
    <div class="row relatedServiceRow">
        <div class="col-lg-12">
            <h2 class="secTitle text-center"><?= $title ?></h2>
            <div class="row align-items-stretch align-self-stretch align-content-stretch">
                <div class="col-lg-12">
                    <div class="serviceCarousel owl-carousel align-items-stretch align-self-stretch align-content-stretch">
                        <?php foreach ($data as $key => $value) : ?>
                            <div class="serviceItem01 rounded border p-3 h-100 shadow-sm">
                                <div class="pi01Thumb">
                                    <img loading="lazy" width="1000" height="1000" data-src="<?= get_picture("services_v", $value->img_url) ?>" alt="<?= $value->title ?>" title="<?= $value->title ?>" class="img-fluid lazyload" />
                                    <?php $secondaryImage = get_secondary_image($value->id,$value->img_url, $lang) ?>
                                    <?php if (!empty($secondaryImage)) : ?>
                                        <img loading="lazy" width="1000" height="1000" data-src="<?= get_picture("services_v", $secondaryImage) ?>" alt="<?= $value->title ?>" title="<?= $value->title ?>" class="img-fluid lazyload">
                                    <?php endif ?>
                                    <div class="pi01Actions">
                                        <a href="<?= base_url(lang("routes_services") . "/" . lang("routes_service") . "/" . $value->seo_url) ?>" rel="dofollow" title="<?= $value->title ?>"><i class="fa-solid fa-arrows-up-down-left-right"></i></a>
                                    </div>
                                </div>
                                <div class="pi01Details">
                                    <h3 class="text-center"><a class="text-center" rel="dofollow" title="<?= $value->title ?>" href="<?= base_url(lang("routes_services") . "/" . lang("routes_service") . "/" . $value->seo_url) ?>"><?= $value->title ?></a></h3>
                                </div>
                            </div>
                        <?php endforeach ?>
                    </div>
                </div>
            </div>
        </div>
    </div>
<?php endif ?>