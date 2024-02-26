$('.banner--home .owl-carousel').owlCarousel({
    loop: true,
    margin: 0,
    nav: false,
    autoplay: true,
    dots: false,
    responsive: {
        0: {
            items: 1
        },
        992: {
            items: 2
        },
    }
})
$('.category-feature .owl-carousel').owlCarousel({
    loop: true,
    margin: 0,
    nav: false,
    dots: false,
    responsive: {
        0: {
            items: 2
        },
        575: {
            items: 3
        },
        768: {
            items: 5
        },
        992: {
            items: 6
        },
    }
})


$('.discount .owl-carousel').owlCarousel({
    // loop: true,

    nav: true,
    dots: false,
    navText: [`<i class="fa fa-angle-left" aria-hidden="true"></i>`, `<i class="fa fa-angle-right" aria-hidden="true"></i>`],
    responsive: {
        0: {
            items: 1,
            stagePadding: 40,
            margin: 20,
            loop: true,
        },
        768: {
            items: 2,
            stagePadding: 0,
            margin: 30,
            loop: false,
        },
        992: {
            items: 3,
            stagePadding: 0,
            margin: 30,
            loop: false,
        },
    }
})

$('.deals .owl-carousel').owlCarousel({
    loop: true,
    nav: false,
    dots: false,
    autoplay: true,
    responsive: {
        0: {
            items: 1
        },
        576: {
            items: 2
        },
        768: {
            items: 3
        },
    }
})

$('.news-detail__content .owl-carousel').owlCarousel({
    loop: true,
    nav: true,
    dots: false,
    navText: [`<i class="fa fa-angle-left" aria-hidden="true"></i>`, `<i class="fa fa-angle-right" aria-hidden="true"></i>`],
    items: 1,
})

$('.latest-news .owl-carousel').owlCarousel({
    loop: true,
    margin: 30,
    nav: false,
    dots: true,
    responsive: {
        0: {
            items: 1
        },
        576: {
            items: 2
        },
        768: {
            items: 3
        },
    }
})


$('.sv-slider .owl-carousel').owlCarousel({
    autoplay: false,
    autoplayHoverPause: true,
    dots: false,
    nav: true,
    thumbs: true,
    thumbImage: true,
    thumbsPrerendered: true,
    thumbContainerClass: 'owl-thumbs',
    thumbItemClass: 'owl-thumb-item',
    loop: true,
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

$('.product-related .owl-carousel').owlCarousel({
    loop: true,
    margin: 30,
    nav: false,
    dots: false,
    responsive: {
        0: {
            items: 1
        },
        768: {
            items: 3
        },
        1000: {
            items: 4
        }
    }
})


Fancybox.bind('[data-fancybox]', {
});
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
    displayElement.innerHTML = slide1.toLocaleString() + "k - " + slide2.toLocaleString() + "k";
}

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

$(document).ready(function () {
    $('.product-sort__form .dropdown-menu li').on('click', function () {
        $('.product-sort__form .dropdown-menu li').removeClass('activemenu');
        $(this).addClass('activemenu');
        var selectedLabel = $(this).find('label').text();
        $('#selectedOption1').text(selectedLabel);
    });
});

$('.product-sort__form .dropdown-menu li input').each(function () {
    if ($(this).prop('checked')) {
        var label = $(this).next('label');
        var title = label.attr('title');
        $('#selectedOption1').text(title);
    }
});


// qty
var buttonPlus = $(".qty-btn-plus");
var buttonMinus = $(".qty-btn-minus");

var incrementPlus = buttonPlus.click(function () {
    var $n = $(this)
        .parent(".qty-container")
        .find(".input-qty");
    $n.val(Number($n.val()) + 1);
});

var incrementMinus = buttonMinus.click(function () {
    var $n = $(this)
        .parent(".qty-container")
        .find(".input-qty");
    var amount = Number($n.val());
    if (amount > 0) {
        $n.val(amount - 1);
    }
});



$('.scrolltab').click(function () {
    var $navTabs = $('.nav-tabs');
    if ($navTabs.scrollLeft() === 0) {
        $navTabs.animate({
            scrollLeft: $navTabs[0].scrollWidth - $navTabs.width()
        }, 'slow');
    } else {
        $navTabs.animate({
            scrollLeft: 0
        }, 'slow');
    }
});

$(document).ready(function () {
    if ($(window).width() > 767) {
        var cardBodies = $('.contact-1 .padding0');
        var maxHeight = Math.max.apply(null, cardBodies.map(function () {
            return $(this).height();
        }).get());
        cardBodies.css('--height', maxHeight);
    }
});
$(document).ready(function () {
    if ($(window).width() > 767) {
        var cardBodies = $('.contact-2 .padding0');
        var maxHeight = Math.max.apply(null, cardBodies.map(function () {
            return $(this).height();
        }).get());
        cardBodies.css('--height', maxHeight);
    }
});

$(document).ready(function () {
    if ($(window).width() > 767) {
        var cardBodies = $('.contact .padding0');
        var maxWidth = Math.max.apply(null, cardBodies.map(function () {
            return $(this).width();
        }).get());
        cardBodies.css('--width', maxWidth);
    }
});

// setheight
$(document).ready(function () {
    if ($(window).width() > 768) {
        var cardBodies = $('.leader .padding0');
        var maxHeight = Math.max.apply(null, cardBodies.map(function () {
            return $(this).height();
        }).get());
        cardBodies.height(maxHeight);
    }
});

