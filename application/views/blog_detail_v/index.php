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
                    <!--Blog List Single Start-->
                    <div class="blog-list__single">
                        <div class="blog-list__img-1">
                            <img width="1000" height="1000" loading="lazy" data-src="<?= get_picture("blogs_v", $blog->img_url) ?>" title="<?= $blog->title ?>" alt="<?= $blog->title ?>" class="img-fluid w-100 lazyload">
                        </div>
                        <div class="blog-list__content">
                            <ul class="blog-list__meta list-unstyled">
                                <li>
                                    <a href="<?= base_url() ?>" rel="dofollow" title="<?= $settings->company_name ?>"><i class="fa fa-user"></i><?= $settings->company_name ?></a>
                                </li>
                                <li>
                                    <?php foreach ($categories as $k => $v) : ?>
                                        <?php if ($v->id == $blog->category_id) : ?>
                                            <a rel="dofollow" href="<?= base_url(lang("routes_blog") . "/{$v->seo_url}") ?>" title="<?= $v->title ?>"><?= $v->title ?></a>
                                        <?php endif ?>
                                    <?php endforeach ?>
                                </li>
                            </ul>
                            <h3 class="blog-list__title"><a href="<?= base_url() ?>" rel="dofollow" title="<?= $settings->company_name ?>"><?= $blog->title ?></a></h3>
                            <?= $blog->content ?>
                        </div>
                    </div>
                    <!--Blog List Single End-->
                </div>
            </div>
        </div>
    </div>
</section>
<!--Blog List End-->