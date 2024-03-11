//-----Menu mobile-----

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
    else {
        $(window).scroll(function () {
            if ($(this).scrollTop() >= 69) {
                $('.menu-head-mobile').addClass('affix');
            } else {
                $('.menu-head-mobile').removeClass('affix');
            }
        });
    }

    $(window).scroll(function () {
        if ($(this).scrollTop() <= 300) {
            $('.exten__left').addClass('hidden');
        } else {
            $('.exten__left').removeClass('hidden');
        }
    });
});

$('.bars-menu a').click(function () {
    $('#menu_mobile').addClass('mbactive');
    $('body').addClass('over')
})

$('.menu-close').click(function () {
    $(this).closest('.mbactive').removeClass('mbactive');
    $('body').removeClass('over');
});

$(' .backdorp-menu').click(function () {
    $('#menu_mobile').removeClass('mbactive');
    $('body').removeClass('over');
});

$('.hasc').click(function () {
    $(this).find('.hasca').addClass('click');
})

var coll = document.getElementsByClassName("hasca");
var i;

for (i = 0; i < coll.length; i++) {
    coll[i].addEventListener("click", function () {
        this.classList.toggle("active");
        $(this).parent().toggleClass('set');
        var content = this.nextElementSibling.nextElementSibling;
        if (content.style.maxHeight) {
            content.style.maxHeight = null;
        } else {
            content.style.maxHeight = content.scrollHeight + "px";
        }
    });
}

$(document).ready(function () {
    $('.dropdown-menu li.active a').addClass('active');
});
//-----End menu mobile-----

