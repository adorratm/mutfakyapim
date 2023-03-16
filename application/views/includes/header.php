<?php defined('BASEPATH') or exit('No direct script access allowed'); ?>
<div class="page-wrapper">
    <header class="main-header-two">
        <div class="main-header-two__top">
            <div class="main-header-two__top-wrapper">
                <div class="main-header-two__top-inner">
                    <div class="main-header-two__top-left">
                        <ul class="list-unstyled main-header-two__contact-list">
                            <li>
                                <div class="icon">
                                    <i class="icon-location"></i>
                                </div>
                                <div class="text">
                                    <p>
                                        <?php if (!empty(@json_decode($settings->address, TRUE)[0])) : ?>
                                            <a rel="dofollow" title="<?= lang("address") ?>" href="<?= base_url(lang("routes_contact")) ?>"><i class="fa-solid fa-map-marker-alt"></i> <?= @json_decode($settings->address, TRUE)[0] ?></a>
                                        <?php endif ?>
                                    </p>
                                </div>
                            </li>
                        </ul>
                    </div>
                    <div class="main-header-two__top-right">
                        <div class="main-heaader-two__top-social-box">
                            <div class="main-heaader-two__email-box">
                                <div class="main-heaader-two__email-icon">
                                    <span class="icon-email-mail"></span>
                                </div>
                                <div class="main-heaader-two__email-address">
                                    <p>
                                        <?php if (!empty($settings->email)) : ?>
                                            <a rel="dofollow" title="Email" href="mailto:<?= $settings->email ?>"><i class="fa-solid fa-envelope-open"></i> <?= $settings->email ?></a>
                                        <?php endif ?>
                                    </p>
                                </div>
                            </div>
                            <p class="main-heaader-two__top-social-title"><?= lang("social") ?></p>
                            <div class="main-header-two__top-social">
                                <?php if (!empty($settings->facebook)) : ?>
                                    <a class="facebook" rel="nofollow" href="<?= $settings->facebook ?>" title="Facebook" target="_blank">
                                        <i aria-hidden="true" class="fa fa-facebook"></i>
                                    </a>
                                <?php endif ?>
                                <?php if (!empty($settings->twitter)) : ?>
                                    <a class="twitter" rel="nofollow" href="<?= $settings->twitter ?>" title="Twitter" target="_blank">
                                        <i aria-hidden="true" class="fa fa-twitter"></i>
                                    </a>
                                <?php endif ?>
                                <?php if (!empty($settings->instagram)) : ?>
                                    <a class="instagram" rel="nofollow" href="<?= $settings->instagram ?>" title="Instagram" target="_blank">
                                        <i aria-hidden="true" class="fa fa-instagram"></i>
                                    </a>
                                <?php endif ?>
                                <?php if (!empty($settings->linkedin)) : ?>
                                    <a class="linkedin" rel="nofollow" href="<?= $settings->linkedin ?>" title="Linkedin" target="_blank">
                                        <i aria-hidden="true" class="fa fa-linkedin"></i>
                                    </a>
                                <?php endif ?>
                                <?php if (!empty($settings->youtube)) : ?>
                                    <a class="youtube" rel="nofollow" href="<?= $settings->youtube ?>" title="Youtube" target="_blank">
                                        <i aria-hidden="true" class="fa fa-youtube"></i>
                                    </a>
                                <?php endif ?>
                                <?php if (!empty($settings->medium)) : ?>
                                    <a class="medium" rel="nofollow" href="<?= $settings->medium ?>" title="Medium" target="_blank">
                                        <i aria-hidden="true" class="fa fa-medium"></i>
                                    </a>
                                <?php endif ?>
                                <?php if (!empty($settings->pinterest)) : ?>
                                    <a class="pinterest" rel="nofollow" href="<?= $settings->pinterest ?>" title="Pinterest" target="_blank">
                                        <i aria-hidden="true" class="fa fa-pinterest"></i>
                                    </a>
                                <?php endif ?>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <nav class="main-menu main-menu-two">
            <div class="main-menu-two__wrapper">
                <div class="main-menu-two__wrapper-inner">
                    <div class="main-menu-two__left">
                        <div class="main-menu-two__logo">
                            <a rel="dofollow" href="<?= base_url() ?>" title="<?= $settings->company_name ?>">
                                <picture>
                                    <img style="filter: drop-shadow(1px 1px 1px black);" width="200" height="90" data-src="<?= get_picture("settings_v", $settings->logo) ?>" alt="<?= $settings->company_name ?>" class="lazyload img-fluid">
                                </picture>
                            </a>
                        </div>
                        <div class="main-menu-two__main-menu-box">
                            <a rel="dofollow" href="<?= base_url() ?>" title="<?= $settings->company_name ?>" class="mobile-nav__toggler"><i class="fa fa-bars"></i></a>
                            <?= $menus ?>
                        </div>
                    </div>
                    <div class="main-menu-two__right">
                        <div class="main-menu-two__call-search-btn">
                            <div class="main-menu-two__call">
                                <div class="main-menu-two__call-icon">
                                    <span class="fa fa-phone-volume"></span>
                                </div>
                                <div class="main-menu-two__call-content">
                                    <p><?= lang("weAreJustAPhoneCallAway") ?></p>
                                    <h4>
                                        <?php if (!empty(@json_decode($settings->phone, TRUE)[0])) : ?>
                                            <a rel="dofollow" title="<?= lang("phone") ?>" href="tel:<?= @json_decode($settings->phone, TRUE)[0] ?>"><?= @json_decode($settings->phone, TRUE)[0] ?></a>
                                        <?php endif ?>
                                    </h4>
                                </div>
                            </div>
                            <div class="main-menu-two__btn-box ms-2">
                                <a rel="dofollow" title="<?= lang("contact") ?>" href="<?= base_url(lang("routes_contact")) ?>" class="main-menu-two__btn"><?= lang("contact") ?></a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </nav>
    </header>

    <div class="stricky-header stricked-menu main-menu main-menu-two">
        <div class="sticky-header__content"></div><!-- /.sticky-header__content -->
    </div><!-- /.stricky-header -->

    <div class="mobile-nav__wrapper">
        <div class="mobile-nav__overlay mobile-nav__toggler"></div>
        <!-- /.mobile-nav__overlay -->
        <div class="mobile-nav__content">
            <span class="mobile-nav__close mobile-nav__toggler"><i class="fa fa-times"></i></span>

            <div class="logo-box">
                <a rel="dofollow" href="<?= base_url() ?>" title="<?= $settings->company_name ?>">
                    <picture>
                        <img width="200" height="90" data-src="<?= get_picture("settings_v", $settings->logo) ?>" alt="<?= $settings->company_name ?>" class="lazyload img-fluid rounded">
                    </picture>
                </a>
            </div>
            <!-- /.logo-box -->
            <div class="mobile-nav__container"></div>
            <!-- /.mobile-nav__container -->

            <ul class="mobile-nav__contact list-unstyled">
                <li>
                    <i class="fa fa-envelope"></i>
                    <a href="mailto:needhelp@packageName__.com">needhelp@bcorz.com</a>
                </li>
                <li>
                    <i class="fa fa-phone-alt"></i>
                    <a href="tel:666-888-0000">666 888 0000</a>
                </li>
            </ul><!-- /.mobile-nav__contact -->
            <div class="mobile-nav__top">
                <div class="mobile-nav__social">
                    <a href="#" class="fab fa-twitter"></a>
                    <a href="#" class="fab fa-facebook-square"></a>
                    <a href="#" class="fab fa-pinterest-p"></a>
                    <a href="#" class="fab fa-instagram"></a>
                </div><!-- /.mobile-nav__social -->
            </div><!-- /.mobile-nav__top -->



        </div>
        <!-- /.mobile-nav__content -->
    </div>
    <!-- /.mobile-nav__wrapper -->