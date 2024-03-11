//----- Fancy box-----

Fancybox.bind('[data-fancybox]', {
    compact: false,
    contentClick: "iterateZoom",
    Images: {
        Panzoom: {
            maxScale: 2,
        },
    },
});

//----- End Fancy box-----

//owl

$('.banner__home .owl-carousel').owlCarousel({
    loop: true,
    margin: 0,
    nav: true,
    autoplay: true,
    dots: false,
    items: 1,
    navText: [`<i class="fa fa-angle-left" aria-hidden="true"></i>`, `<i class="fa fa-angle-right" aria-hidden="true"></i>`],
})
$('.quick__view-wrap .owl-carousel').owlCarousel({
    loop: true,
    margin: 0,
    nav: true,
    autoplay: true,
    dots: true,
    items: 1,
    navText: [`<i class="fa fa-angle-left" aria-hidden="true"></i>`, `<i class="fa fa-angle-right" aria-hidden="true"></i>`],
})

$('.product__lastest .owl-carousel').owlCarousel({
    loop: true,
    margin: 30,
    autoplay: true,
    // stagePadding: 15,
    navText: [`<i class="fa fa-angle-left" aria-hidden="true"></i>`, `<i class="fa fa-angle-right" aria-hidden="true"></i>`],
    responsive: {
        0: {
            items: 1,
            dots: true,
            nav: false,
        },
        576: {
            items: 2
        },
        768: {
            items: 3,
            nav: true,
            dots: false,
        },
        992: {
            items: 4,
        }
    }
})
$('.best_sale .owl-carousel').owlCarousel({
    loop: true,
    margin: 30,
    nav: true,
    dots: false,
    autoplay: true,
    // stagePadding: 15,
    navText: [`<i class="fa fa-angle-left" aria-hidden="true"></i>`, `<i class="fa fa-angle-right" aria-hidden="true"></i>`],
    responsive: {
        0: {
            items: 1,
            dots: true,
            nav: false,
        },
        576: {
            items: 2
        },
        768: {
            items: 3,
            nav: true,
            dots: false,
        },
        992: {
            items: 4
        }
    }
})

$('.trending-right .owl-carousel').owlCarousel({
    loop: true,
    margin: 0,
    autoplay: true,
    items: 1,
    navText: [`<i class="fa fa-angle-left" aria-hidden="true"></i>`, `<i class="fa fa-angle-right" aria-hidden="true"></i>`],
    responsive: {
        0: {
            dots: true,
            nav: false,
        },

        768: {
            dots: false,
            nav: true,
        },

    }
})

$('.partner .owl-carousel').owlCarousel({
    loop: true,
    margin: 10,
    nav: false,

    responsive: {
        0: {
            items: 2,
            dots: true,
        },
        576: {
            items: 3
        },
        768: {
            dots: false,
            items: 4,

        },
        1000: {
            items: 6
        }
    }
})
$('.feature__news .owl-carousel').owlCarousel({
    loop: true,
    margin: 30,
    responsive: {
        0: {
            items: 1,
            dots: true,
            nav: false,
        },
        576: {
            items: 2
        },
        768: {
            items: 3,
            dots: false,
            nav: true,
        },

    }
})
$('.teams .owl-carousel').owlCarousel({
    loop: true,
    margin: 30,
    responsive: {
        0: {
            items: 1,
            dots: true,
            nav: false,
        },
        576: {
            items: 2
        },
        768: {
            items: 3,
            dots: false,
            nav: true,
        },
        992: {
            items: 4,
            dots: false,
            nav: true,
        },
    }
})
$('.product__related .owl-carousel').owlCarousel({
    loop: true,
    stagePadding: 2,
    margin: 30,
    responsive: {
        0: {
            items: 1,
            dots: true,
            nav: false,
        },
        576: {
            items: 2
        },
        768: {
            items: 3,
            dots: false,
            nav: true,
        },
        992: {
            items: 4,
            dots: false,
            nav: true,
        },
    }
})

$('.product__detail .owl-carousel').owlCarousel({
    loop: false,
    margin: 0,
    nav: true,
    dots: false,
    items: 1,
    navText: [`<i class="fa fa-angle-left" aria-hidden="true"></i>`, `<i class="fa fa-angle-right" aria-hidden="true"></i>`],
})

//set height

$(document).ready(function () {
    if ($(window).width() >= 768) {
        var cardBodies = $('.trending-wrap .trending-thumb img');
        var maxHeight = Math.max.apply(null, cardBodies.map(function () {
            return $(this).height();
        }).get());
        console.log(maxHeight);
        $('.trending-right').height(maxHeight - 80);
    }
});
$(document).ready(function () {
    if ($(window).width() >= 768) {
        var cardBodies = $('.insta__wrap .col-sm-6');
        var maxHeight = Math.max.apply(null, cardBodies.map(function () {
            return $(this).height();
        }).get());
        console.log(maxHeight);
        $('.insta__right').height(maxHeight - 80);
    }
});

// Quick View

$(".quick__view").click(function () {
    $('body').addClass('overflow');
    $(".quick__view-container").addClass('quick__view-show');
})
$(".quick__view-backdrop").click(function () {
    $(".quick__view-container").removeClass('quick__view-show');
    $('body').removeClass('overflow');
})
$(".quick__view-close i").click(function () {
    $(".quick__view-container").removeClass('quick__view-show');
    $('body').removeClass('overflow');
})

//

// range
function getVals() {
    var parent = this.parentNode;
    var slides = parent.getElementsByTagName("input");
    var slide1 = parseFloat(slides[0].value);
    var slide2 = parseFloat(slides[1].value);

    if (slide1 > slide2) {
        var tmp = slide2;
        slide2 = slide1;
        slide1 = tmp;
    }
    var displayElement = parent.getElementsByClassName("rangeValues")[0];
    displayElement.innerHTML = slide1.toLocaleString() + "đ - " + slide2.toLocaleString() + "đ";
    console.log('test mobile');
}

$('.form__price .btn--ountline').click(function (e) {
    e.preventDefault();
    var slide1 = parseFloat($('.form__price input[name="min"]').val());
    var slide2 = parseFloat($('.form__price input[name="max"]').val());
    if (slide1 > slide2) {
        var tmp = slide2;
        slide2 = slide1;
        slide1 = tmp;
        $('.form__price input[name="min"]').val(slide1);
        $('.form__price input[name="max"]').val(slide2);
    }
    $('.form__price').submit();
});

window.onload = function () {
    var sliderSections = document.getElementsByClassName("range-slider");
    for (var x = 0; x < sliderSections.length; x++) {
        var sliders = sliderSections[x].getElementsByTagName("input");
        for (var y = 0; y < sliders.length; y++) {
            if (sliders[y].type === "range") {
                sliders[y].addEventListener("input", getVals);
                getVals.call(sliders[y]);
            }
        }
    }
};

//

$(".quick__view-color li").click(function () {
    $(".quick__view-color li").removeClass('color-seleted')
    $(this).addClass('color-seleted')
    $(".quick__view-clear").css('display', 'block')
})
$(".quick__view-size li").click(function () {
    $(".quick__view-size li").removeClass('size-seleted')
    $(this).addClass('size-seleted')
    $(".quick__view-clear").css('display', 'block')
})
$(".quick__view-clear").click(function () {
    $(".quick__view-size li").removeClass('size-seleted')
    $(".quick__view-color li").removeClass('color-seleted')
    $(".quick__view-size li:first-child").addClass('size-seleted')
    $(".quick__view-color li:first-child").addClass('color-seleted')
    $(".quick__view-clear").removeAttr('style')

})

//
$(document).ready(function () {
    if ($(window).width() > 768) {
        var cardBodies = $('.col-sm-4 .contact__item');
        var maxHeight = Math.max.apply(null, cardBodies.map(function () {
            return $(this).height();
        }).get());
        cardBodies.height(maxHeight);
    }
});

// sort
$('.product-sort__mobile').click(function () {
    $('.product__list-filter').addClass('mbactive');
    $('.product__list-close').addClass('mbactive');
    $('body').addClass('over');
});

$('.product-sort__mobile').click(function () {
    $('.product__list-filter').addClass('mbactive');
    $('.quick__view-backdrop').addClass('mbactive');
    $('body').addClass('over');
});

$('.quick__view-backdrop').click(function () {
    $(this).removeClass('mbactive');
    $('.product__list-filter').removeClass('mbactive');
    $('.product__list-close').removeClass('mbactive');
});
$('.product__list-close').click(function () {
    $(this).removeClass('mbactive');
    $('.product__list-filter').removeClass('mbactive');
    $('.quick__view-backdrop').removeClass('mbactive');
});
