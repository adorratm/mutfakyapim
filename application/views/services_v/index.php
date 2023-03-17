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

<!-- END: Categories Section -->
<form class="w-100" id="searchServiceForm" action="<?= !empty($this->uri->segment(4) && !is_numeric($this->uri->segment(5))) ? base_url(lang("routes_services") . "/" . $this->uri->segment(3) . "/" . $this->uri->segment(4) . "/" . $this->uri->segment(5)) : base_url(lang("routes_services") . "/" . $this->uri->segment(3) . "/" . $this->uri->segment(4)) ?>" method="GET" enctype="multipart/form-data">
    <section class="categoriesSections">
        <div class="container-fluid px-5">
            <div class="row shopAccessRow align-items-center align-content-center align-self-center shadow p-2">
                <div class="col-sm-12 col-md-2 col-lg-2 col-xl-2 my-2">
                    <div class="serviceCount"><?= $offset == 0 ? (!empty($services) ? 1 : 0) : (empty($services) ? 0 : $offset) ?>–<?= $total_rows > $offset + $per_page ? (empty($services) ? 0 : $offset + $per_page) : (empty($services) ? 0 : $total_rows) ?> / <?= empty($services) ? 0 : $total_rows ?></div>
                </div>
                <div class="col-sm-12 col-md-5 col-lg-6 col-xl-7 d-xl-flex my-2">
                    <div class="input-group">
                        <input style="padding-right:37px" class="form-control" placeholder="<?= lang("searchServices") ?>" type="text" name="search" value="<?= (!empty($_GET["search"]) ? $_GET["search"] : null) ?>">
                        <input type="hidden" name="<?= $this->security->get_csrf_token_name() ?>" value="<?= $this->security->get_csrf_hash() ?>" />
                        <button type="button" class="btn bg-transparent rounded-0" style="margin-left: -37px; z-index: 100;" onclick="$('#searchServiceForm').find('input[name=search]').val('');$('#searchServiceForm').submit()">
                            <i class="fa fa-times"></i>
                        </button>
                    </div>
                </div>
                <div class="col-sm-12 col-md-5 col-lg-4 col-xl-3 my-2">
                    <div class="shopAccessBar">
                        <div class="sortNav">
                            <label><?= lang("orderBy") ?></label>
                            <select name="orderBy" onchange="$('#searchServiceForm').submit()">
                                <option <?= (!empty($_GET["orderBy"]) && $_GET["orderBy"] == 1 ? "selected" : null) ?> value="1"><?= lang("newToOld") ?></option>
                                <option <?= (!empty($_GET["orderBy"]) && $_GET["orderBy"] == 2 ? "selected" : null) ?> value="2"><?= lang("oldToNew") ?></option>
                                <option <?= (!empty($_GET["orderBy"]) && $_GET["orderBy"] == 3 ? "selected" : null) ?> value="3"><?= lang("aToZ") ?></option>
                                <option <?= (!empty($_GET["orderBy"]) && $_GET["orderBy"] == 4 ? "selected" : null) ?> value="4"><?= lang("zToA") ?></option>
                            </select>
                        </div>
                    </div>
                </div>
            </div>


            <div class="row bg-white shadow p-2 align-items-stretch align-self-stretch align-content-stretch categoryServiceRow">
                <div class="col-sm-5 col-md-4 col-lg-3 col-xl-2">
                    <div class="shopSidebar">
                        <?php if (!empty($service_patterns)) : ?>
                            <aside class="widget sizeFilter">
                                <h3 class="widgetTitle" data-bs-toggle="collapse" data-bs-target="#searchablePatternsDiv" aria-expanded="true"><?= lang("servicePattern") ?></h3>
                                <div id="searchablePatternsDiv" class="collapse show">
                                    <input class="form-control form-control-sm mb-2" type="text" id="servicePatternSearch" onkeyup="searchFunction('servicePatternSearch','searchablePatterns')" placeholder="<?= lang("servicePatternSearch") ?>">
                                    <ul id="searchablePatterns">
                                        <?php foreach ($service_patterns as $ppKey => $ppValue) : ?>
                                            <li>
                                                <div class="form-check">
                                                    <input <?= in_array($ppValue->pattern_id, $explodedPatternChecks) ? "checked" : null ?> class="form-check-input servicePatternCheck" type="checkbox" value="<?= $ppValue->pattern_id ?>" id="servicePatternCheck<?= $ppValue->pattern_id ?>">
                                                    <label class="form-check-label" for="servicePatternCheck<?= $ppValue->pattern_id ?>">
                                                        <?= $ppValue->pattern ?>
                                                    </label>
                                                </div>
                                            </li>
                                        <?php endforeach ?>
                                    </ul>
                                </div>
                            </aside>
                        <?php endif ?>
                        <?php if (!empty($service_dimensions)) : ?>
                            <aside class="widget sizeFilter">
                                <h3 class="widgetTitle" data-bs-toggle="collapse" data-bs-target="#searchableDimensionsDiv" aria-expanded="true"><?= lang("serviceDimension") ?></h3>
                                <div id="searchableDimensionsDiv" class="collapse show">
                                    <input class="form-control form-control-sm mb-2" type="text" id="serviceDimensionSearch" onkeyup="searchFunction('serviceDimensionSearch','searchableDimensions')" placeholder="<?= lang("serviceDimensionSearch") ?>">
                                    <ul id="searchableDimensions">
                                        <?php foreach ($service_dimensions as $pdKey => $pdValue) : ?>
                                            <li>
                                                <div class="form-check">
                                                    <input <?= in_array($pdValue->dimension_id, $explodedDimensionChecks) ? "checked" : null ?> class="form-check-input serviceDimensionCheck" type="checkbox" value="<?= $pdValue->dimension_id ?>" id="serviceDimensionCheck<?= $pdValue->dimension_id ?>">
                                                    <label class="form-check-label" for="serviceDimensionCheck<?= $pdValue->dimension_id ?>">
                                                        <?= $pdValue->dimension ?>
                                                    </label>
                                                </div>
                                            </li>
                                        <?php endforeach ?>
                                    </ul>
                                </div>
                            </aside>
                        <?php endif ?>
                        <?php if (!empty($service_colors)) : ?>
                            <aside class="widget">
                                <h3 class="widgetTitle" data-bs-toggle="collapse" data-bs-target="#searchableColorsDiv" aria-expanded="true"><?= lang("serviceColor") ?></h3>
                                <div id="searchableColorsDiv" class="collapse show">
                                    <input class="form-control form-control-sm mb-2" type="text" id="serviceColorSearch" onkeyup="searchFunction('serviceColorSearch','searchableColors')" placeholder="<?= lang("serviceColorSearch") ?>">
                                    <ul id="searchableColors">
                                        <?php foreach ($service_colors as $pcKey => $pcValue) : ?>
                                            <li>
                                                <div class="form-check">
                                                    <input <?= in_array($pcValue->color_id, $explodedColorChecks) ? "checked" : null ?> class="form-check-input serviceColorCheck" type="checkbox" value="<?= $pcValue->color_id ?>" id="serviceColorCheck<?= $pcValue->color_id ?>">
                                                    <label class="form-check-label" for="serviceColorCheck<?= $pcValue->color_id ?>">
                                                        <?= $pcValue->color ?>
                                                    </label>
                                                </div>
                                            </li>
                                        <?php endforeach ?>
                                    </ul>
                                </div>
                            </aside>
                        <?php endif ?>
                        <?php if (!empty($service_brands)) : ?>
                            <aside class="widget">
                                <h3 class="widgetTitle" data-bs-toggle="collapse" data-bs-target="#searchableBrandsDiv" aria-expanded="true"><?= lang("serviceBrand") ?></h3>
                                <div id="searchableBrandsDiv" class="collapse show">
                                    <input class="form-control form-control-sm mb-2" type="text" id="serviceBrandSearch" onkeyup="searchFunction('serviceBrandSearch','searchableBrands')" placeholder="<?= lang("serviceBrandSearch") ?>">
                                    <ul id="searchableBrands">
                                        <?php foreach ($service_brands as $pbKey => $pbValue) : ?>
                                            <li>
                                                <div class="form-check">
                                                    <input <?= in_array($pbValue->brand_id, $explodedBrandChecks) ? "checked" : null ?> class="form-check-input serviceBrandCheck" type="checkbox" value="<?= $pbValue->brand_id ?>" id="serviceBrandCheck<?= $pbValue->brand_id ?>">
                                                    <label class="form-check-label" for="serviceBrandCheck<?= $pbValue->brand_id ?>">
                                                        <?= $pbValue->brand ?>
                                                    </label>
                                                </div>
                                            </li>
                                        <?php endforeach ?>
                                    </ul>
                                </div>
                            </aside>
                        <?php endif ?>
                        <aside class="widget">
                            <button role="button" class="fs-5 btn btn-outline-secondary w-100"><?= lang("serviceFilter") ?></button>
                            <?php if (!empty($_GET)) : ?>
                                <a rel="dofollow" title="<?= lang("clearFilter") ?>" class="btn btn-outline-danger mt-2 text-center w-100 fs-5" href="<?= base_url(lang("routes_services") . "/" . $this->uri->segment(3) . "/" . $this->uri->segment(4)) ?>"><?= lang("clearFilter") ?></a>
                            <?php endif ?>
                        </aside>
                    </div>
                </div>
                <div class="col-sm-7 col-md-8 col-lg-9 col-xl-10">
                    <div class="row">
                        <?php if (!empty($services)) : ?>
                            <?php foreach ($services as $key => $value) : ?>
                                <div class="col-12 col-sm-12 col-md-6 col-lg-4 col-xl-3 col-xxl-3 my-3">
                                    <div class="serviceItem01 rounded border p-3 h-100 shadow-sm">
                                        <div class="pi01Thumb">
                                            <img loading="lazy" width="1000" height="1000" data-src="<?= get_picture("services_v", $value->img_url) ?>" alt="<?= $value->title ?>" title="<?= $value->title ?>" class="img-fluid lazyload" />
                                            <?php $secondaryImage = get_secondary_image($value->id, $value->img_url, $lang) ?>
                                            <?php if (!empty($secondaryImage)) : ?>
                                                <img loading="lazy" width="1000" height="1000" data-src="<?= get_picture("services_v", $secondaryImage) ?>" alt="<?= $value->title ?>" title="<?= $value->title ?>" class="img-fluid lazyload">
                                            <?php endif ?>
                                            <div class="pi01Actions">
                                                <a href="<?= base_url(lang("routes_services") . "/" . lang("routes_service") . "/" . $value->seo_url) ?>" rel="dofollow" title="<?= $value->title ?>"><i class="fa-solid fa-arrows-up-down-left-right"></i></a>
                                            </div>
                                            <?php if (get_active_user() && !empty($value->discounted_price)) : ?>
                                                <div class="serviceLabels clearfix">
                                                    <span class="plDis">- <?= $value->price - $value->discounted_price ?><?= $symbol ?></span>
                                                    <span class="plSale"><?= lang("discountedService") ?></span>
                                                </div>
                                            <?php endif ?>
                                        </div>
                                        <div class="pi01Details">
                                            <h3 class="text-center fw-medium fs-6"><a href="<?= base_url(lang("routes_services") . "/" . lang("routes_service") . "/" . $value->seo_url) ?>" rel="dofollow" title="<?= $value->title ?>"><?= $value->title ?></a></h3>
                                            <?php if (get_active_user()) : ?>
                                                <div class="pi01Price text-center d-flex mx-auto justify-content-center">
                                                    <?php if (!empty($value->price) || !empty($value->discounted_price)) : ?>
                                                        <ins><?= !empty($value->discounted_price) ? $value->discounted_price : $value->price ?> <?= $symbol ?></ins>
                                                    <?php endif ?>
                                                    <?php if (!empty($value->discounted_price) && $value->discounted_price > 0) : ?>
                                                        <del><?= $value->price ?> <?= $symbol ?></del>
                                                    <?php endif ?>
                                                </div>
                                            <?php endif ?>
                                        </div>
                                    </div>
                                </div>
                            <?php endforeach ?>
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
            </div>





            <?= @$links ?>
        </div>
    </section>
</form>
<!-- END: Categories Section -->


<script>
    const searchFunction = (inputId, ulId) => {
        // Declare variables
        let input, filter, ul, li, label, i, txtValue;
        input = document.getElementById(inputId);
        filter = input.value.toLocaleUpperCase("<?= strto("lower|upper", $lang) ?>");
        ul = document.getElementById(ulId);
        li = ul.getElementsByTagName('li');

        // Loop through all list items, and hide those who don't match the search query
        for (i = 0; i < li.length; i++) {
            label = li[i].getElementsByTagName("label")[0];
            txtValue = label.textContent || label.innerText;
            if (txtValue.toLocaleUpperCase("<?= strto("lower|upper", $lang) ?>").indexOf(filter) > -1) {
                li[i].style.display = "";
            } else {
                li[i].style.display = "none";
            }
        }
    }
</script>