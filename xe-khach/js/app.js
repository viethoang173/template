$('.banner__home .owl-carousel').owlCarousel({
    loop: true,
    margin: 0,
    nav: true,
    dots: true,
    items: 1,
    navText: [`<i class="fa fa-angle-left" aria-hidden="true"></i>`, `<i class="fa fa-angle-right" aria-hidden="true"></i>`],
})

$('.service .owl-carousel').owlCarousel({
    loop: true,
    margin: 30,
    nav: true,
    dots: true,
    navText: [`<i class="fa fa-angle-left" aria-hidden="true"></i>`, `<i class="fa fa-angle-right" aria-hidden="true"></i>`],
    responsive: {
        0: {
            items: 1
        },
        768: {
            items: 3
        },
    }
})
$('.news__home .owl-carousel').owlCarousel({
    loop: true,
    margin: 30,
    nav: false,
    dots: true,
    navText: [`<i class="fa fa-angle-left" aria-hidden="true"></i>`, `<i class="fa fa-angle-right" aria-hidden="true"></i>`],
    responsive: {
        0: {
            items: 1
        },
        768: {
            items: 2
        },
    }
})

$('.news__list-owl').owlCarousel({
    loop: true,
    margin: 30,
    nav: false,
    dots: false,
    autoplay: true,
    navText: [`<i class="fa fa-angle-left" aria-hidden="true"></i>`, `<i class="fa fa-angle-right" aria-hidden="true"></i>`],
    responsive: {
        0: {
            items: 1
        },
        768: {
            items: 2
        },
    }
})
$('.news__list-owl-1').owlCarousel({
    loop: true,
    margin: 30,
    nav: true,
    dots: true,
    items: 1,
    autoplay: true,
    navText: [`<i class="fa fa-angle-left" aria-hidden="true"></i>`, `<i class="fa fa-angle-right" aria-hidden="true"></i>`],

})

$('.service__owl').owlCarousel({
    loop: true,
    margin: 30,
    nav: true,
    dots: true,
    items: 1,
    autoplay: true,
    navText: [`<i class="fa fa-angle-left" aria-hidden="true"></i>`, `<i class="fa fa-angle-right" aria-hidden="true"></i>`],

})

// select date

jQuery.datetimepicker.setLocale('vi');

jQuery('#datetimepicker').datetimepicker({
    step: 30,
    mask: true,
    format: 'd/m/Y  H:i',
});

