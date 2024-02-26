
$('#home .reviews .owl-carousel').owlCarousel({
    loop: true,
    margin: 30,
    nav: true,
    items: 3,
    dots: true,
    nav: false,
    autoplay: true,
    responsive: {
        0: {
            items: 1,
        },
        576: {
            items: 2,
        },
        992: {
            items: 3,
        },


    }
})
$('.partner .owl-carousel').owlCarousel({
    loop: true,
    margin: 30,
    nav: true,
    items: 5,
    dots: false,
    nav: false,
    autoplay: true,
    responsive: {
        0: {
            items: 2,
        },
        576: {
            items: 3,
        },
        768: {
            items: 4,
        },
        992: {
            items: 5,
        },

    }
})
$('.ourteam .owl-carousel').owlCarousel({
    loop: true,
    margin: 30,
    nav: true,
    items: 5,
    dots: false,
    nav: false,
    autoplay: true,
    responsive: {
        0: {
            items: 2,
        },
        576: {
            items: 3,
        },
        768: {
            items: 4,
        },

    }
})
$('.page-section__related .owl-carousel').owlCarousel({
    loop: true,
    margin: 30,
    nav: true,
    items: 5,
    dots: false,
    nav: false,
    autoplay: true,
    responsive: {
        0: {
            items: 1,
        },
        576: {
            items: 2,
        },
    }
})

$('.page-section__photo .owl-carousel').owlCarousel({
    loop: true,
    nav: true,
    items: 1,
    dots: false,
    nav: true,
    autoplay: false,
    navText: ['<i class="fa fa-angle-left" aria-hidden="true"></i>', '<i class="fa fa-angle-right" aria-hidden="true"></i>']
})

$(document).ready(function () {
    if ($(window).width() > 992) {
        $(window).scroll(function () {
            if ($(this).scrollTop() >= 50) {
                $('.box-navbar').addClass('affix');
            } else {
                $('.box-navbar').removeClass('affix');
            }
        });
    }
});

$('.bars-menu a').click(function () {
    $('#menu_mobile').addClass('mbactive');
    $('body').addClass('over')
})

$('.menu-close').click(function () {
    $(this).closest('.mbactive').removeClass('mbactive');
    $('body').removeClass('over');
});

$('.hasc').click(function () {
    $(this).find('.hasca').addClass('click');
})

$(document).ready(function () {
    $('.dropdown-menu li.active a').addClass('active');
});

Fancybox.bind('[data-fancybox]', {
});

$('.navigation .navigation__link').on('click', function (e) {
    var href = $(this).attr('href');
    var offset = ($(window).width() > 768) ? 145 : 68;

    $('html, body').animate({
        scrollTop: $(href).offset().top - offset
    }, 500);

    e.preventDefault();
});

$(window).scroll(function () {
    var scrollDistance = $(window).scrollTop();
    $('.page-section').each(function (i) {
        if ($(this).position().top <= scrollDistance) {
            $('.navigation a.active').removeClass('active');
            $('.navigation a').eq(i).addClass('active');
        }
    });
}).scroll();
