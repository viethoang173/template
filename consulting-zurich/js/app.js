$('.banner .owl-carousel').owlCarousel({
    loop: true,
    items: 1,

    autoplay: true,
    navText: [$(`<svg width="9" height="15" viewBox="0 0 9 15" fill="none" xmlns="http://www.w3.org/2000/svg">
    <path d="M2.88296 7.499L8.5961 2.20873C8.82414 1.99588 8.96698 1.69128 8.99335 1.36164C9.01972 1.032 8.92746 0.704181 8.73678 0.449973C8.54609 0.195765 8.27253 0.0358839 7.97599 0.00534196C7.67946 -0.0252 7.38411 0.0760862 7.15464 0.28702L0.404326 6.53812C0.277753 6.65563 0.175939 6.80259 0.106075 6.96862C0.0362106 7.13465 0 7.3157 0 7.49898C0 7.68227 0.0362106 7.86332 0.106075 8.02935C0.175939 8.19538 0.277753 8.34234 0.404326 8.45985L7.15464 14.7109C7.38401 14.9229 7.67971 15.025 7.97678 14.9948C8.27386 14.9646 8.548 14.8047 8.73901 14.55C8.93001 14.2954 9.02224 13.9669 8.99545 13.6368C8.96865 13.3066 8.82502 13.0018 8.5961 12.7892L2.88296 7.499Z" fill="#BAC1C6"/>
    </svg>
    `), $(`<svg width="9" height="15" viewBox="0 0 9 15" fill="none" xmlns="http://www.w3.org/2000/svg">
    <path d="M6.11704 7.501L0.403896 12.7913C0.175858 13.0041 0.0330153 13.3087 0.00664976 13.6384C-0.0197158 13.968 0.0725435 14.2958 0.263225 14.55C0.453906 14.8042 0.727468 14.9641 1.02401 14.9947C1.32054 15.0252 1.61589 14.9239 1.84536 14.713L8.59567 8.46188C8.72225 8.34437 8.82406 8.19741 8.89393 8.03138C8.96379 7.86535 9 7.6843 9 7.50102C9 7.31773 8.96379 7.13668 8.89393 6.97065C8.82406 6.80462 8.72225 6.65766 8.59567 6.54015L1.84536 0.289073C1.61599 0.0771275 1.32029 -0.0249747 1.02322 0.00519551C0.726143 0.0353657 0.451996 0.195341 0.260994 0.449978C0.0699931 0.704616 -0.0222415 1.03309 0.00455262 1.36325C0.0313468 1.69341 0.174979 1.99825 0.403896 2.2108L6.11704 7.501Z" fill="#BAC1C6"/>
    </svg>
    `)],
    responsive: {
        0: {
            nav: false,
            dots: true,
        },
        768: {
            nav: true,
            dots: false,
        },

    }
})
$('#home .partner .owl-carousel').owlCarousel({
    loop: true,
    items: 6,
    nav: false,
    dots: false,
    autoplay: true,
    responsive: {
        0: {
            items: 2,
        },
        430: {
            items: 3,
        },
        768: {
            items: 4,
        },
        992: {
            items: 6,
        },

    }
})
$('#about-page .partner .owl-carousel').owlCarousel({
    loop: true,
    items: 5,
    nav: false,
    dots: false,
    autoplay: true,
    margin: 20,
    responsive: {
        0: {
            items: 2,
        },
        430: {
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

$('.testimonials .owl-carousel').owlCarousel({
    loop: true,
    items: 3,
    nav: true,
    dots: false,
    autoplay: true,
    navText: [$(`<svg width="9" height="15" viewBox="0 0 9 15" fill="none" xmlns="http://www.w3.org/2000/svg">
    <path d="M2.88296 7.499L8.5961 2.20873C8.82414 1.99588 8.96698 1.69128 8.99335 1.36164C9.01972 1.032 8.92746 0.704181 8.73678 0.449973C8.54609 0.195765 8.27253 0.0358839 7.97599 0.00534196C7.67946 -0.0252 7.38411 0.0760862 7.15464 0.28702L0.404326 6.53812C0.277753 6.65563 0.175939 6.80259 0.106075 6.96862C0.0362106 7.13465 0 7.3157 0 7.49898C0 7.68227 0.0362106 7.86332 0.106075 8.02935C0.175939 8.19538 0.277753 8.34234 0.404326 8.45985L7.15464 14.7109C7.38401 14.9229 7.67971 15.025 7.97678 14.9948C8.27386 14.9646 8.548 14.8047 8.73901 14.55C8.93001 14.2954 9.02224 13.9669 8.99545 13.6368C8.96865 13.3066 8.82502 13.0018 8.5961 12.7892L2.88296 7.499Z" fill="#BAC1C6"/>
    </svg>
    `), $(`<svg width="9" height="15" viewBox="0 0 9 15" fill="none" xmlns="http://www.w3.org/2000/svg">
    <path d="M6.11704 7.501L0.403896 12.7913C0.175858 13.0041 0.0330153 13.3087 0.00664976 13.6384C-0.0197158 13.968 0.0725435 14.2958 0.263225 14.55C0.453906 14.8042 0.727468 14.9641 1.02401 14.9947C1.32054 15.0252 1.61589 14.9239 1.84536 14.713L8.59567 8.46188C8.72225 8.34437 8.82406 8.19741 8.89393 8.03138C8.96379 7.86535 9 7.6843 9 7.50102C9 7.31773 8.96379 7.13668 8.89393 6.97065C8.82406 6.80462 8.72225 6.65766 8.59567 6.54015L1.84536 0.289073C1.61599 0.0771275 1.32029 -0.0249747 1.02322 0.00519551C0.726143 0.0353657 0.451996 0.195341 0.260994 0.449978C0.0699931 0.704616 -0.0222415 1.03309 0.00455262 1.36325C0.0313468 1.69341 0.174979 1.99825 0.403896 2.2108L6.11704 7.501Z" fill="#BAC1C6"/>
    </svg>
    `)],
    responsive: {
        0: {
            items: 1,
        },
        768: {
            items: 2,
        },
        992: {
            items: 3,
        },

    }
})

$(document).ready(function () {
    if ($(window).width() > 768) {
        var cardBodies = $('.featured-works .col-side');
        var maxHeight = Math.max.apply(null, cardBodies.map(function () {
            return $(this).height();
        }).get());
        cardBodies.height(maxHeight);
    }
});

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

function changeOption(newOption) {
    $('.dropdown-menu li').removeClass('activemenu');
    $('#selectedOption').text(newOption);
    $(event.target).parent().addClass('activemenu');
}

// (function () {
//     /**
//      * Draws the outline of the svg circle to the percent set in data attr
//      */
//     function drawCharts() {

//         var circle = document.querySelector('.percent-circle');


//         //pull the percentage and turn it into a fraction
//         var percent = circle.dataset.percent / 100;
//         //work out the circumference from the width
//         var diameter = circle.offsetWidth;
//         var circumference = Math.ceil(diameter * Math.PI);
//         //now we have the circumference, we know how long the ouline should be
//         var stroke = Math.ceil(circumference * percent);
//         //also workout how long the line doesn't exist for
//         var diff = circumference - stroke;

//         //now add the strok dash array for the first two values
//         //TODO : could this all be done with css?
//         circle.querySelector('.percent-circle-inner').style.strokeDasharray = stroke + 'px ' + diff + 'px';

//         var outerCircle = document.querySelector('.outer-circle-container');
//         var deg = circle.dataset.percent * 360 * .01;
//         outerCircle.style.transform = "rotate(" + deg + "deg)";
//     }

//     document.addEventListener('DOMContentLoaded', drawCharts);
// })();

var numberOfElements = $('.products .col-sm-4').length;
console.log(numberOfElements);

//
var buttonPlus  = $(".qty-btn-plus");
var buttonMinus = $(".qty-btn-minus");

var incrementPlus = buttonPlus.click(function() {
  var $n = $(this)
  .parent(".qty-container")
  .find(".input-qty");
  $n.val(Number($n.val())+1 );
});

var incrementMinus = buttonMinus.click(function() {
  var $n = $(this)
  .parent(".qty-container")
  .find(".input-qty");
  var amount = Number($n.val());
  if (amount > 0) {
    $n.val(amount-1);
  }
});