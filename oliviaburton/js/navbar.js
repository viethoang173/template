// $(document).ready(function () {
//     // MOBI
//     new Mmenu(
//         document.querySelector("#menu"),
//         {
//             theme: "white",
//             navbars: [
//                 {
//                     content: ["prev", "breadcrumbs", "close"],
//                 },
//             ],
//         },

//     );

//     $('.menu-icon').click(function (e) {
//         $('#menu').css('z-index', '3')
//         $('body').css('overflow', 'hidden')
//         e.preventDefault()
//     })

//     $(document).on('click', '.mm-btn--close, .mm-wrapper__blocker', function (e) {
//         $('#menu').removeAttr('style')
//         $('body').removeAttr('style')
//         e.preventDefault()
//     })

//     // WEB

//     function handlerMenu() {
//         $(this).find('.dropdown-menu').stop(true, false).fadeToggle()
//     }

//     function hoverEvent() {
//         $('.dropdown').hover(handlerMenu)
//     }

//     hoverEvent()

// });