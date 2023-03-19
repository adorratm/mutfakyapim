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

<!-- BEGIN: Blog Page Section -->
<section class="blogPageSection">
    <div class="container">
        <div class="row">
            <div class="col-lg-10 offset-lg-1">
                <?php foreach ($blogs as $key => $value) : ?>
                    <?php if (strtotime($value->sharedAt) <= strtotime("now")) : ?>
                        <div class="blogItem04">
                            <div class="bi04Thumb">
                                <a href="<?= base_url(lang("routes_blog") . "/" . lang("routes_blog_detail") . "/{$value->seo_url}") ?>" title="<?= $value->title ?>">
                                    <img data-src="<?= get_picture("blogs_v", $value->img_url) ?>" title="<?= $value->title ?>" alt="<?= $value->title ?>" class="lazyload img-fluid w-100">
                                </a>
                            </div>
                            <div class="bi04Detail">
                                <div class="bi01Meta clearfix">
                                    <span><i class="fa-solid fa-folder-open"></i>
                                        <?php foreach ($categories as $k => $v) : ?>
                                            <?php if ($v->id == $value->category_id) : ?>
                                                <a rel="dofollow" href="<?= base_url(lang("routes_blog") . "/{$v->seo_url}") ?>" title="<?= $v->title ?>"><?= $v->title ?></a>
                                            <?php endif ?>
                                        <?php endforeach ?>
                                    </span>
                                    <span><i class="fa-solid fa-clock"></i><a href="<?= base_url(lang("routes_blog") . "/" . lang("routes_blog_detail") . "/{$value->seo_url}") ?>" title="<?= $value->title ?>"><?= turkishDate("d F Y, l H:i", $value->updatedAt) ?></a></span>
                                </div>
                                <h2><a rel="dofollow" href="<?= base_url(lang("routes_blog") . "/" . lang("routes_blog_detail") . "/{$value->seo_url}") ?>" title="<?= $value->title ?>"><?= $value->title ?></a></h2>
                                <div class="bi04Excerpt"><?= mb_word_wrap($value->content, 500, "...") ?></div>
                                <div class="bi04Footer">
                                    <a rel="dofollow" href="<?= base_url(lang("routes_blog") . "/" . lang("routes_blog_detail") . "/{$value->seo_url}") ?>" title="<?= $value->title ?>" class="ulinaBTN"><span><?= lang("viewBlog") ?></span></a>
                                </div>
                            </div>
                        </div>
                    <?php endif ?>
                <?php endforeach ?>
                <div class="row">
                    <div class="col-lg-12 text-center">
                        <div class="blog-page__pagination">
                            <?= @$links ?>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- END: Blog Page Section -->