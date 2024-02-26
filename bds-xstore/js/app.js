$('.banner__home .owl-carousel').owlCarousel({
    loop: true,
    margin: 0,
    nav: true,
    dots: false,
    autoplay: true,
    items: 1,
    navText: [`<i class="fa fa-angle-left" aria-hidden="true"></i>`, `<i class="fa fa-angle-right" aria-hidden="true"></i>`],
    responsive: {
        0: {
            dots: true,
        },
        768: {
            dots: false,
        },
    }
})
$('.deal .owl-carousel').owlCarousel({
    loop: false,
    margin: 30,
    nav: false,
    dots: true,
    items: 1,
    navText: [`<i class="fa fa-angle-left" aria-hidden="true"></i>`, `<i class="fa fa-angle-right" aria-hidden="true"></i>`],
})

$('.best__seller .owl-carousel').owlCarousel({
    loop: false,
    margin: 30,
    nav: true,

    navText: [`<i class="fa fa-angle-left" aria-hidden="true"></i>`, `<i class="fa fa-angle-right" aria-hidden="true"></i>`],
    responsive: {
        0: {
            items: 1,
            dots: true,
        },
        768: {
            items: 3,
            dots: false,
        },
    }
})
$('.rate .owl-carousel').owlCarousel({
    loop: false,
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

$('.team .owl-carousel').owlCarousel({
    loop: true,
    margin: 30,
    nav: false,
    responsive: {
        0: {
            items: 1,
            dots: true,
        },
        768: {
            items: 3,
            dots: false,
        }
    }
})
$('.blog .owl-carousel').owlCarousel({
    loop: true,
    margin: 30,
    nav: false,
    responsive: {
        0: {
            items: 1,
            dots: true,

        },
        768: {
            items: 3,
            dots: false,

        }
    }
})

$('.partner .owl-carousel').owlCarousel({
    loop: true,
    margin: 30,
    nav: false,
    responsive: {
        0: {
            items: 2,
            dots: false,

        },
        768: {
            items: 4,
            dots: true,
        },
        992: {
            items: 4,
            dots: true,
        },
        1200: {
            items: 6,
            dots: true,
        }
    }
})

$('.sv-slider .owl-carousel').owlCarousel({
    autoplay: true,
    autoplayHoverPause: true,
    dots: false,
    nav: true,
    thumbs: true,
    thumbImage: true,
    thumbsPrerendered: true,
    thumbContainerClass: 'owl-thumbs',
    thumbItemClass: 'owl-thumb-item',
    loop: false,
    navText: [`<i class="fa fa-angle-left" aria-hidden="true"></i>`, `<i class="fa fa-angle-right" aria-hidden="true"></i>`],
    items: 1,
    responsive: {
        0: {
            items: 1,
        },
        768: {
            items: 1,
        },
        992: {
            items: 1,
        }
    }
});



$('.owl-thumbs .owl-thumb-item').click(function () {
    var targetButton = $(this);
    var carouselContainer = $('.owl-thumbs');
    var scrollPosition = targetButton.position().left + carouselContainer.scrollLeft() - (carouselContainer.width() - targetButton.width()) / 2;
    carouselContainer.animate({ scrollLeft: scrollPosition }, 'slow');
});

$('.product__related .owl-carousel').owlCarousel({
    loop: true,
    margin: 30,
    nav: true,
    responsive: {
        0: {
            items: 1,
            dots: true,
        },
        768: {
            items: 3,
            dots: false,
        },
    }
})

//
$(document).ready(function () {
    if ($(window).width() > 767) {
        var cardBodies = $('.left__side');
        var maxHeight = Math.max.apply(null, cardBodies.map(function () {
            return $(this).height();
        }).get());
        console.log(maxHeight);
        $('.right__side').height(maxHeight + 40);
    }
});