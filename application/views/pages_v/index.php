<?php defined('BASEPATH') or exit('No direct script access allowed'); ?>
<!--Page Header Start-->
<section class="page-header">
    <div class="page-header__bg" style="background-image: url(<?= !empty($item->banner_url) ? get_picture("pages_v", $item->banner_url)  : get_picture("settings_v", $settings->about_logo) ?>);"></div>
    <div class="container">
        <div class="page-header__inner">
            <h2><?= $page_title ?></h2>
        </div>
    </div>
</section>
<!--Page Header End-->

<?php $this->load->view("includes/testimonial") ?>

<!-- BEGIN: About Section -->
<section class="aboutPageSection01 p-0">
    <?php if ($item->type === "ABOUT" || $item->type === "CONTENT") : ?>
        <div class="container-fluid">
            <div class="row triggerFixed align-items-stretch align-self-stretch align-content-stretch">
                <div class="col-lg-12 image-column bg-white h-100">
                    <div class="title-box rounded p-1 p-sm-3">
                        <div class="sec-title mb-0">
                            <?php $pages = $this->general_model->get_all("pages", null, "rank ASC", ["isActive" => 1, "type" => $item->type]); ?>
                            <?php if (!empty($pages)) : ?>
                                <?php $l = 1 ?>
                                <ul class="nav pageNav justify-content-center" id="fixingBar">
                                    <?php foreach ($pages as $key => $value) : ?>
                                        <li class="nav-item <?= $l != count($pages) ? "border-end" : null ?>"><a class="nav-link p-1 p-lg-2 text-dark <?= $this->uri->segment(3) == $value->url ? "active" : null ?>" rel="dofollow" title="<?= $value->title ?>" style="font-weight: 600;font-size:13px" href="#<?= $value->url ?>"><?= $value->title ?></a></li>
                                        <?php $l++ ?>
                                    <?php endforeach ?>
                                </ul>
                            <?php endif ?>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    <?php endif ?>
    <?php $pages = $this->general_model->get_all("pages", null, "rank ASC", ["isActive" => 1, "type" => $item->type]); ?>
    <?php if ($item->type === "ABOUT") : ?>

        <?php $i = 0 ?>
        <!-- BEGIN: About Section -->
        <?php foreach ($pages as $key => $value) : ?>
            <div class="container-fluid  <?= $i % 2 == 0 ? "py-4" : null ?>" id="<?= $value->url ?>" <?= $i % 2 == 0 ? "style='background-color:var(--bcorz-black)'" : null ?>>
                <div class="container">
                    <div class="row align-items-center align-self-center align-content-center my-4">
                        <?php if (!empty($value->img_url)) : ?>
                            <div class="col-lg-6 order-0 order-lg-<?= $i % 2 == 0 ? "1" : "0" ?> h-100">
                                <div class="image text-center justify-content-center d-flex"><img loading="lazy" class="img-fluid lazyload" data-src="<?= get_picture("pages_v", $value->img_url) ?>" title="<?= $value->title ?>" alt="<?= $value->title ?>"></div>
                            </div>
                        <?php endif ?>
                        <?php if (!empty(clean($value->content))) : ?>
                            <div class="col-lg-6 order-lg-<?= $i % 2 == 0 ? "0" : "1" ?> h-100">
                                <h2 class="font-weight-bold mb-4 <?= $i % 2 != 0 ? "text-dark" : "text-white" ?>"><?= $value->title ?></h2>
                                <div class="text <?= $i % 2 == 0 ? "text-white" : null ?>">
                                    <?= $value->content ?>
                                </div>
                            </div>
                        <?php endif ?>
                    </div>
                </div>
            </div>
            <?php $i++ ?>
        <?php endforeach ?>
    <?php endif ?>
    <?php if ($item->type === "CONTENT") : ?>
        <?php $i = 0 ?>
        <?php foreach ($pages as $key => $value) : ?>
            <div class="container-fluid" id="<?= $value->url ?>">
                <div class="auto-container">
                    <div class="row align-items-center align-self-center align-content-center my-4 <?= $i % 2 != 0 ? "py-4" : null ?>">
                        <?php if (!empty($value->img_url)) : ?>
                            <div class="col-lg-6 order-0 order-lg-<?= $i % 2 == 0 ? "1" : "0" ?> h-100">
                                <div class="image text-center justify-content-center d-flex"><img loading="lazy" class="img-fluid lazyload" data-src="<?= get_picture("pages_v", $value->img_url) ?>" title="<?= $value->title ?>" alt="<?= $value->title ?>"></div>
                            </div>
                        <?php endif ?>
                        <?php if (!empty(clean($value->content))) : ?>
                            <div class="col-lg-6 order-1 order-lg-<?= $i % 2 == 0 ? "0" : "1" ?> h-100">
                                <h2 class="font-weight-bold mb-4 text-dark"><?= $value->title ?></h2>
                                <div class="text">
                                    <?= $value->content ?>
                                </div>
                            </div>
                        <?php endif ?>
                    </div>
                </div>
            </div>
            <?php $i++ ?>
        <?php endforeach ?>
    <?php endif ?>
    <?php if ($item->type === "KVKK") : ?>
        <div class="container-fluid">
            <div class="container">
                <div class="row align-items-center align-self-center align-content-center my-4">
                    <div class="col-lg-12 h-100">
                        <div class="accordion" id="accordionExample">
                            <?php $i = 0 ?>
                            <?php foreach ($pages as $key => $value) : ?>
                                <div class="card">
                                    <div class="card-header bg-white" id="heading<?= $i ?>">
                                        <h2 class="mb-0">
                                            <button style="box-shadow:none" class="btn btn-link btn-block p-1 text-left font-weight-bold text-dark" type="button" data-bs-toggle="collapse" data-bs-target="#collapse<?= $i ?>" aria-expanded="true" aria-controls="collapse<?= $i ?>">
                                                <?= $value->title ?>
                                            </button>
                                        </h2>
                                    </div>

                                    <div id="collapse<?= $i ?>" class="collapse <?= $value->url == $this->uri->segment(3) ? "show" : null ?>" aria-labelledby="heading<?= $i ?>" data-bs-parent="#accordionExample">
                                        <div class="card-body text">
                                            <?= $value->content ?>
                                        </div>
                                    </div>
                                </div>
                                <?php $i++ ?>
                            <?php endforeach ?>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    <?php endif ?>
    <?php if ($item->type === "SIMPLE") : ?>
        <!--Why Choose Two Start-->
        <section class="why-choose-two why-choose-three">
            <div class="container">
                <div class="row">
                    <?php if (!empty($item->img_url)) : ?>
                        <div class="col-xl-6">
                            <div class="why-choose-two__left">
                                <div class="why-choose-two__img-1 wow slideInLeft" data-wow-delay="100ms" data-wow-duration="2500ms">
                                    <img loading="lazy" class="img-fluid lazyload" data-src="<?= get_picture("pages_v", $item->img_url) ?>" title="<?= $item->title ?>" alt="<?= $item->title ?>">
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
                                <h2 class="section-title__title"><?= $item->title ?></h2>
                            </div>
                            <p class="why-choose-two__text-1"><?= $item->content ?></p>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!--Why Choose Two End-->
    <?php endif ?>
    <?php if ($item->type === "CAREER") : ?>
        <!--Why Choose Two Start-->
        <section class="why-choose-two why-choose-three">
            <div class="container">
                <div class="row">
                    <?php if (!empty($item->img_url)) : ?>
                        <div class="col-xl-6">
                            <div class="why-choose-two__left">
                                <div class="why-choose-two__img-1 wow slideInLeft" data-wow-delay="100ms" data-wow-duration="2500ms">
                                    <img loading="lazy" class="img-fluid lazyload" data-src="<?= get_picture("pages_v", $item->img_url) ?>" title="<?= $item->title ?>" alt="<?= $item->title ?>">
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
                                <h2 class="section-title__title"><?= $item->title ?></h2>
                            </div>
                            <p class="why-choose-two__text-1"><?= $item->content ?></p>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!--Why Choose Two End-->
        <section class="contact-page">
            <div class="container">
                <div class="team-details__bottom contact-page__bottom">
                    <div class="row">
                        <div class="col-xl-12">
                            <div class="comment-form-2 mt-0">
                                <h3 class="comment-form-2__title"><?= lang("careerForm") ?></h3>
                                <form onsubmit="return false" enctype="multipart/form-data" method="POST" id="career-form" class="comment-form-2__form contact-form-validated">
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
                                                <?php $departments = $this->general_model->get_all("departments", [], "rank ASC", ["isActive" => 1]); ?>
                                                <select name="department" id="department">
                                                    <option value=""><?= lang("selectDepartment") ?></option>
                                                    <?php foreach ($departments as $department) : ?>
                                                        <option value="<?= $department->title ?>"><?= $department->title ?></option>
                                                    <?php endforeach ?>
                                                </select>
                                            </div>
                                            <div class="comment-form-2__input-box text-message-box">
                                                <textarea name="comment" id="comment" cols="30" rows="8" placeholder="<?= lang("message") ?>" required></textarea>
                                            </div>
                                            <div class="comment-form-2__input-box">
                                                <input type="file" name="cv" id="cv" placeholder="<?= lang("cv") ?>" required>
                                            </div>
                                            <div class="comment-form-2__btn-box">
                                                <button class="thm-btn comment-form-2__btn btnSubmitCareerForm" aria-label="<?= $settings->company_name ?>" type="button" data-url="<?= base_url(lang("routes_career-form")) ?>"><?= lang("submitCareer") ?></button>
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
    <?php endif ?>
</section>
<!-- END: About Section -->

<?php if (!empty($homeitems2)) : ?>
    <!--Team One Start-->
    <section class="team-one team-two">
        <div class="container">
            <div class="row align-items-stretch align-self-stretch align-content-stretch">
                <?php $i = 100 ?>
                <?php foreach ($homeitems2 as $key => $value) : ?>
                    <!--Team One Single Start-->
                    <div class="col-xl-4 col-lg-4 wow fadeInUp mb-lg-3" data-wow-delay="<?= $i ?>ms">
                        <div class="team-one__single h-100">
                            <div class="team-one__inner">
                                <div class="team-one__shape-1 float-bob-y d-none d-xxl-block"></div>
                                <div class="team-one__img">
                                    <img loading="lazy" class="img-fluid lazyload" data-src="<?= get_picture("home_items_v", $value->img_url) ?>" alt="<?= $value->title ?>">
                                </div>
                                <div class="team-one__content mt-3">
                                    <h3 class="team-one__name"><?= $value->title ?></h3>
                                    <p class="team-one__sub-title"><?= $value->content ?></p>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!--Team One Single End-->
                    <?php $i += 100; ?>
                    <?php if ($i == 300) : ?>
                        <?php $i = 100 ?>
                    <?php endif ?>
                <?php endforeach ?>
            </div>
        </div>
    </section>
    <!--Team One End-->
<?php endif ?>


<?php if (!empty($homeitems3)) : ?>
    <!--How We Works Start-->
    <section class="how-we-works">
        <div class="container">
            <div class="section-title text-center">
                <span class="section-title__tagline"><?= $settings->company_name ?></span>
                <div class="section-title-shape">
                    <img loading="lazy" class="lazyload img-fluid" data-src="<?= asset_url("public/images/shapes/section-title-shape-1.webp") ?>" alt="<?= $settings->company_name ?>">
                </div>
                <h2 class="section-title__title"><?= str_replace("{company_name}", $settings->company_name, lang("whyWe")) ?></h2>
            </div>

            <?php $i = 1 ?>
            <?php foreach ($homeitems3 as $key => $value) : ?>
                <?php if ($i == 1) : ?>
                    <div class="how-we-works__inner mb-5">
                        <div class="how-we-works__round"></div>
                        <ul class="list-unstyled how-we-works__list">
                        <?php endif ?>

                        <li>
                            <div class="how-we-works__content">
                                <div class="how-we-works__icon">
                                    <img loading="lazy" class="lazyload img-fluid" data-src="<?= get_picture("home_items_v", $value->img_url) ?>" alt="<?= $value->title ?>">
                                </div>
                                <h3 class="how-we-works__title"><?= $value->title ?></a>
                                </h3>
                                <p class="how-we-works__text"><?= $value->content ?></p>
                                <?php if ($i == 1) : ?>
                                    <div class="how-we-works__shape-1">
                                        <img class="img-fluid lazyload" loading="lazy" data-src="<?= asset_url("public/images/shapes/how-we-works-shape-1.webp") ?>" alt="<?= $settings->company_name ?>">
                                    </div>
                                <?php endif ?>
                                <?php if ($i == 3) : ?>
                                    <div class="how-we-works__shape-2">
                                        <img class="img-fluid lazyload" loading="lazy" data-src="<?= asset_url("public/images/shapes/how-we-works-shape-2.webp") ?>" alt="<?= $settings->company_name ?>">
                                    </div>
                                    <div class="how-we-works__shape-3">
                                        <img class="img-fluid lazyload" loading="lazy" data-src="<?= asset_url("public/images/shapes/how-we-works-shape-3.webp") ?>" alt="<?= $settings->company_name ?>">
                                    </div>
                                <?php endif ?>
                            </div>
                        </li>

                        <?php $i++ ?>
                        <?php if ($i == 4) : ?>
                        </ul>
                    </div>
                    <?php $i = 1 ?>
                <?php endif ?>
            <?php endforeach ?>
        </div>
    </section>
    <!--How We Works End-->
<?php endif ?>