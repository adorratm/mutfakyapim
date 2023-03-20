<?php defined('BASEPATH') or exit('No direct script access allowed'); ?>
<!--Page Header Start-->
<section class="page-header">
    <div class="page-header__bg" style="background-image: url(<?= get_picture("settings_v", $settings->blog_logo) ?>);"></div>
    <div class="container">
        <div class="page-header__inner">
            <h2><?= $page_title ?></h2>
        </div>
    </div>
</section>
<!--Page Header End-->

<!--Blog List start-->
<section class="blog-list">
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-xl-10 col-lg-7">
                <div class="blog-list__left ms-0">
                    <?php foreach ($blogs as $key => $value) : ?>
                        <?php if (strtotime($value->sharedAt) <= strtotime("now")) : ?>
                            <!--Blog List Single Start-->
                            <div class="blog-list__single">
                                <div class="blog-list__img-1">
                                    <a href="<?= base_url(lang("routes_blog") . "/" . lang("routes_blog_detail") . "/{$value->seo_url}") ?>" title="<?= $value->title ?>">
                                        <img data-src="<?= get_picture("blogs_v", $value->img_url) ?>" title="<?= $value->title ?>" alt="<?= $value->title ?>" class="lazyload img-fluid w-100">
                                    </a>
                                </div>
                                <div class="blog-list__content">
                                    <ul class="blog-list__meta list-unstyled">
                                        <li>
                                            <a href="<?= base_url() ?>" rel="dofollow" title="<?= $settings->company_name ?>"><i class="fa fa-user"></i><?= $settings->company_name ?></a>
                                        </li>
                                        <li>
                                            <?php foreach ($categories as $k => $v) : ?>
                                                <?php if ($v->id == $value->category_id) : ?>
                                                    <a rel="dofollow" href="<?= base_url(lang("routes_blog") . "/{$v->seo_url}") ?>" title="<?= $v->title ?>"><?= $v->title ?></a>
                                                <?php endif ?>
                                            <?php endforeach ?>
                                        </li>
                                    </ul>
                                    <h3 class="blog-list__title"><a href="<?= base_url(lang("routes_blog") . "/" . lang("routes_blog_detail") . "/{$value->seo_url}") ?>" title="<?= $value->title ?>"><?= $value->title ?></a></h3>
                                    <div class="blog-list__btn-and-comment">
                                        <div class="blog-list__btn">
                                            <a href="<?= base_url(lang("routes_blog") . "/" . lang("routes_blog_detail") . "/{$value->seo_url}") ?>" title="<?= $value->title ?>"><?= lang("viewBlog") ?> <i class="fa fa-arrow-right"></i></a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <!--Blog List Single End-->
                        <?php endif ?>
                    <?php endforeach ?>
                    <div class="blog-page__pagination">
                        <?= @$links ?>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<!--Blog List End-->