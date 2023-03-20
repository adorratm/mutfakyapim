<?php defined('BASEPATH') or exit('No direct script access allowed'); ?>

<!--Site Footer Two Start-->
<footer class="site-footer-two">
    <div class="site-footer-two__top">
        <div class="container">
            <div class="row">
                <div class="col-xl-4 col-lg-6 col-md-6 wow fadeInUp mb-3 mb-lg-0" data-wow-delay="100ms">
                    <div class="footer-widget-two__column footer-widget-two__about">
                        <div class="footer-widget-two__logo-box">
                            <div class="footer-widget-two__logo">
                                <a rel="dofollow" href="<?= base_url() ?>" title="<?= $settings->company_name ?>">
                                    <picture>
                                        <img style="filter: drop-shadow(1px 1px 1px black);" width="200" height="90" data-src="<?= get_picture("settings_v", $settings->logo) ?>" alt="<?= $settings->company_name ?>" class="lazyload img-fluid">
                                    </picture>
                                </a>
                            </div>
                        </div>
                        <p class="footer-widget-two__text"><?= $settings->meta_description ?></p>
                        <div class="footer-widget-two__contact">
                            <div class="icon">
                                <span class="fa fa-phone-volume"></span>
                            </div>
                            <div class="text">
                                <?php if (!empty(@json_decode($settings->phone, TRUE)[0])) : ?>
                                    <a rel="dofollow" title="<?= lang("phone") ?>" href="tel:<?= @json_decode($settings->phone, TRUE)[0] ?>"><?= @json_decode($settings->phone, TRUE)[0] ?></a>
                                <?php endif ?>
                            </div>
                        </div>
                        <div class="footer-widget-two__contact">
                            <div class="icon">
                                <span class="fa fa-whatsapp bg-success"></span>
                            </div>
                            <div class="text">
                                <?php if (!empty(@json_decode($settings->whatsapp, TRUE)[0])) : ?>
                                    <a rel="dofollow" title="<?= lang("phone") ?>" href="https://api.whatsapp.com/send?phone=<?= str_replace(" ", "", @json_decode($settings->whatsapp, TRUE)[0]) ?>&amp;text=<?= urlencode(lang("hello") . " " . $settings->company_name) ?>."><?= @json_decode($settings->phone, TRUE)[0] ?></a>
                                <?php endif ?>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-xl-8 col-lg-6 col-md-6 wow fadeInUp" data-wow-delay="200ms">
                    <div class="row">
                        <div class="col-xl-5 col-lg-6 col-md-12 mb-3 mb-lg-0 wow fadeInUp" data-wow-delay="100ms">
                            <div class="footer-widget-two__get-in-touch mt-0 ms-0">
                                <h4 class="footer-widget-two__title"><?= lang("contactUs") ?></h4>
                                <p class="footer-widget-two__get-in-touch-text">
                                    <?php if (!empty(@json_decode($settings->address, TRUE)[0])) : ?>
                                        <a rel="dofollow" title="<?= lang("address") ?>" href="<?= base_url(lang("routes_contact")) ?>"><i class="fa-solid fa-map-marker-alt"></i> <?= @json_decode($settings->address, TRUE)[0] ?></a>
                                    <?php endif ?>
                                </p>
                                <div class="footer-widget-two__email-box">
                                    <?php if (!empty($settings->email)) : ?>
                                        <a rel="dofollow" title="Email" href="mailto:<?= $settings->email ?>"><?= $settings->email ?></a>
                                    <?php endif ?>
                                </div>
                                <ul class="footer-widget-two__social-box list-unstyled">
                                    <?php if (!empty($settings->facebook)) : ?>
                                        <li>
                                            <a rel="nofollow" href="<?= $settings->facebook ?>" title="Facebook" target="_blank">
                                                <i class='fa fa-facebook'></i>
                                            </a>
                                        </li>
                                    <?php endif ?>
                                    <?php if (!empty($settings->twitter)) : ?>
                                        <li>
                                            <a rel="nofollow" href="<?= $settings->twitter ?>" title="Twitter" target="_blank">
                                                <i class='fa fa-twitter'></i>
                                            </a>
                                        </li>
                                    <?php endif ?>
                                    <?php if (!empty($settings->instagram)) : ?>
                                        <li>
                                            <a rel="nofollow" href="<?= $settings->instagram ?>" title="Instagram" target="_blank">
                                                <i class='fa fa-instagram'></i>
                                            </a>
                                        </li>
                                    <?php endif ?>
                                    <?php if (!empty($settings->linkedin)) : ?>
                                        <li>
                                            <a rel="nofollow" href="<?= $settings->linkedin ?>" title="Linkedin" target="_blank">
                                                <i class='fa fa-linkedin'></i>
                                            </a>
                                        </li>
                                    <?php endif ?>
                                    <?php if (!empty($settings->youtube)) : ?>
                                        <li>
                                            <a rel="nofollow" href="<?= $settings->youtube ?>" title="Youtube" target="_blank">
                                                <i class='fa fa-youtube'></i>
                                            </a>
                                        </li>
                                    <?php endif ?>
                                    <?php if (!empty($settings->medium)) : ?>
                                        <li>
                                            <a rel="nofollow" href="<?= $settings->medium ?>" title="Medium" target="_blank">
                                                <i class='fa fa-medium'></i>
                                            </a>
                                        </li>
                                    <?php endif ?>
                                    <?php if (!empty($settings->pinterest)) : ?>
                                        <li>
                                            <a rel="nofollow" href="<?= $settings->pinterest ?>" title="Pinterest" target="_blank">
                                                <i class='fa fa-pinterest'></i>
                                            </a>
                                        </li>
                                    <?php endif ?>
                                </ul>
                            </div>
                        </div>
                        <?php if (!empty($footer_menus)) : ?>
                            <div class="col-xl-3 col-lg-6 col-md-12 mb-3 mb-lg-0 wow fadeInUp" data-wow-delay="200ms">
                                <div class="footer-widget-two__quick-links ms-0">
                                    <h4 class="footer-widget-two__title"><?= lang("corporate") ?></h4>
                                    <?= $footer_menus ?>
                                </div>
                            </div>
                        <?php endif ?>
                        <?php if (!empty($footer_service_categories)) : ?>
                            <div class="col-xl-3 col-lg-6 col-md-12 mb-3 mb-lg-0 wow fadeInUp" data-wow-delay="300ms">
                                <div class="footer-widget-two__quick-links ms-0">
                                    <h4 class="footer-widget-two__title"><?= lang("service_categories") ?></h4>
                                    <ul class="footer-widget-two__quick-links-list list-unstyled">
                                        <?php foreach ($footer_service_categories as $key => $value) : ?>
                                            <li>
                                                <a rel="dofollow" title="<?= $value->title ?>" href="<?= base_url(lang("routes_services") . "/" . $value->seo_url) ?>"><?= $value->title ?></a>
                                            </li>
                                        <?php endforeach ?>
                                    </ul>
                                </div>
                            </div>
                        <?php endif ?>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="site-footer-two__bottom">
        <div class="container">
            <div class="row">
                <div class="col-xl-12">
                    <div class="site-footer-two__bottom-inner">
                        <div class="site-footer-two__bottom-text">
                            <p>© 2018 <a rel="dofollow" href="<?= base_url() ?>" title="<?= $settings->company_name ?>"><?= $settings->company_name ?></a> <?= lang("allRightsReserved") ?></p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</footer>
<!--Site Footer Two End-->



</div>

<!-- BEGIN: Back To Top -->
<a href="javascript:void(0);" data-target="html" class="scroll-to-target scroll-to-top"><i class="fa-solid fa-angles-up"></i></a>
<!-- END: Back To Top -->

<!-- Jquery -->

<script src="<?= asset_url("public/js/jquery.min.js") ?>"></script>
<script>
    jQuery.event.special.touchstart = {
        setup: function(_, ns, handle) {
            this.addEventListener("touchstart", handle, {
                passive: !ns.includes("noPreventDefault")
            });
        }
    };
    jQuery.event.special.touchmove = {
        setup: function(_, ns, handle) {
            this.addEventListener("touchmove", handle, {
                passive: !ns.includes("noPreventDefault")
            });
        }
    };
    jQuery.event.special.wheel = {
        setup: function(_, ns, handle) {
            this.addEventListener("wheel", handle, {
                passive: true
            });
        }
    };
    jQuery.event.special.mousewheel = {
        setup: function(_, ns, handle) {
            this.addEventListener("mousewheel", handle, {
                passive: true
            });
        }
    };
</script>
<!-- #Jquery -->
<!--FOOTER END-->
<?php if (!empty($settings->facebook)) : ?>
    <a rel="dofollow" class="fixed-facebook bg-primary" href="<?= $settings->facebook ?>" target="_blank" title="Facebook" data-toggle="tooltip" data-placement="top"><i class="fa fa-facebook"></i></a>
<?php endif ?>
<?php if (!empty($settings->instagram)) : ?>
    <a rel="dofollow" class="fixed-instagram" href="<?= $settings->instagram ?>" target="_blank" title="Instagram" data-toggle="tooltip" data-placement="top"><i class="fa fa-instagram"></i></a>
<?php endif ?>
<?php if (!empty($settings->linkedin)) : ?>
    <a rel="dofollow" class="fixed-linkedin bg-primary" href="<?= $settings->linkedin ?>" target="_blank" title="Linkedin" data-toggle="tooltip" data-placement="top"><i class="fa fa-linkedin"></i></a>
<?php endif ?>
<?php if (!empty(@json_decode($settings->phone, TRUE)[0])) : ?>
    <a rel="dofollow" class="fixed-phone bg-danger" href="tel:<?= @json_decode($settings->phone, TRUE)[0] ?>" title="<?= lang("phone") ?>" data-toggle="tooltip" data-placement="top"><i class="fa fa-phone"></i></a>
<?php endif ?>
<?php if (!empty(@json_decode($settings->whatsapp, TRUE)[0])) : ?>
    <a rel="nofollow" target="_blank" class="fixed-whatsapp bg-success" href="https://api.whatsapp.com/send?phone=<?= str_replace(" ", "", @json_decode($settings->whatsapp, TRUE)[0]) ?>&amp;text=<?= urlencode(lang("hello") . " " . $settings->company_name) ?>." title="WhatsApp" data-toggle="tooltip" data-placement="top"><i class="fa fa-whatsapp"></i></a>
<?php endif ?>

<!--layout end-->
<!-- SCRIPTS -->
<!-- Lazysizes -->
<script async defer src="<?= asset_url("public/js/lazysizes.min.js") ?>"></script>
<!-- #Lazysizes -->

<!-- iziToast -->
<script defer src="<?= asset_url("public/js/iziToast.min.js") ?>"></script>
<!-- #iziToast -->

<script defer src="<?= asset_url("public/js/lightgallery-all.min.js") ?>"></script>

<!-- Site Scripts -->
<script defer src="<?= asset_url("public/js/jquery-migrate.min.js") ?>"></script>
<script defer src="<?= asset_url("public/js/bootstrap.bundle.min.js") ?>"></script>
<script defer src="<?= asset_url("public/vendors/jarallax/jarallax.min.js") ?>"></script>
<script defer src="<?= asset_url("public/vendors/jquery-appear/jquery.appear.min.js") ?>"></script>
<script defer src="<?= asset_url("public/vendors/jquery-circle-progress/jquery.circle-progress.min.js") ?>"></script>
<script defer src="<?= asset_url("public/vendors/nouislider/nouislider.min.js") ?>"></script>
<script defer src="<?= asset_url("public/vendors/swiper/swiper.min.js") ?>"></script>
<script defer src="<?= asset_url("public/vendors/tiny-slider/tiny-slider.min.js") ?>"></script>
<script defer src="<?= asset_url("public/vendors/wnumb/wNumb.min.js") ?>"></script>
<script defer src="<?= asset_url("public/vendors/wow/wow.js") ?>"></script>
<script defer src="<?= asset_url("public/vendors/isotope/isotope.js") ?>"></script>
<script defer src="<?= asset_url("public/vendors/owl-carousel/owl.carousel.min.js") ?>"></script>
<script defer src="<?= asset_url("public/vendors/bxslider/jquery.bxslider.min.js") ?>"></script>
<script defer src="<?= asset_url("public/vendors/vegas/vegas.min.js") ?>"></script>
<script defer src="<?= asset_url("public/vendors/jquery-ui/jquery-ui.js") ?>"></script>
<script defer src="<?= asset_url("public/vendors/circleType/jquery.circleType.js") ?>"></script>
<script defer src="<?= asset_url("public/vendors/circleType/jquery.lettering.min.js") ?>"></script>
<script defer src="<?= asset_url("public/vendors/sidebar-content/jquery-sidebar-content.js") ?>"></script>

<script async defer src="<?= asset_url("public/js/iziModal.min.js") ?>"></script>
<script defer src="<?= asset_url("public/js/bcorz.js") ?>"></script>
<script defer src="<?= asset_url("public/js/app.js") ?>"></script>
<!-- #Site Scripts -->

<!-- SCRIPTS -->
<script>
    window.addEventListener('DOMContentLoaded', () => {
        $(document).on("click", ".map-address", function(e) {
            e.preventDefault();
            e.stopImmediatePropagation();
            let dest = $(this).data("destination");
            if (navigator.geolocation) {
                if ((navigator.platform.indexOf("iPhone") != -1) ||
                    (navigator.platform.indexOf("iPad") != -1) ||
                    (navigator.platform.indexOf("iPod") != -1))
                    window.open("comgooglemapsurl://maps.google.com/maps/dir/?api=1&destination=" + dest + "&travelmode=driving");
                else {
                    window.open("https://www.google.com/maps/dir/?api=1&destination=" + dest + "&travelmode=driving");
                }
            } else {
                iziToast.show({
                    type: "error",
                    title: "<?= lang("error") ?>",
                    message: "<?= lang("allowGeoLocation") ?>",
                    position: "topCenter"
                });
            }
        });
    });
</script>
<?php $this->load->view("includes/alert") ?>
</body>

</html>