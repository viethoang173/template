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

$('.discover .owl-carousel').owlCarousel({
    loop: true,
    margin: 30,
    nav: true,
    dots: false,
    navText: [`<i class="fa fa-angle-left" aria-hidden="true"></i>`, `<i class="fa fa-angle-right" aria-hidden="true"></i>`],
    responsive: {
        0: {
            items: 1
        },
        600: {
            items: 3
        },
        1000: {
            items: 5
        }
    }
})
$('.news__latest .owl-carousel').owlCarousel({
    loop: true,
    margin: 30,
    nav: true,
    dots: false,
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

$('.product__detail .owl-carousel').owlCarousel({
    loop: false,
    margin: 0,
    nav: true,
    dots: false,
    items: 1,
    navText: [`<i class="fa fa-angle-left" aria-hidden="true"></i>`, `<i class="fa fa-angle-right" aria-hidden="true"></i>`],
})
$('.product__related .owl-carousel').owlCarousel({
    loop: false,
    margin: 30,
    nav: true,
    dots: false,
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

//

class HoverButton {
    constructor(el) {
        this.el = el;
        this.hover = false;
        this.calculatePosition();
        this.attachEventsListener();
    }

    attachEventsListener() {
        window.addEventListener('mousemove', e => this.onMouseMove(e));
        window.addEventListener('resize', e => this.calculatePosition(e));
    }

    calculatePosition() {
        gsap.set(this.el, {
            x: 0,
            y: 0,
            scale: 1
        });
        const box = this.el.getBoundingClientRect();
        this.x = box.left + (box.width * 0.5);
        this.y = box.top + (box.height * 0.5);
        this.width = box.width;
        this.height = box.height;
    }

    onMouseMove(e) {
        let hover = false;
        let hoverArea = (this.hover ? 0.7 : 0.5);
        let x = e.clientX - this.x;
        let y = e.clientY - this.y;
        let distance = Math.sqrt(x * x + y * y);
        if (distance < (this.width * hoverArea)) {
            hover = true;
            if (!this.hover) {
                this.hover = true;
            }
            this.onHover(e.clientX, e.clientY);
        }

        if (!hover && this.hover) {
            this.onLeave();
            this.hover = false;
        }
    }

    onHover(x, y) {
        gsap.to(this.el, {
            x: (x - this.x) * 0.3,
            y: (y - this.y) * 0.3,
            // scale: 1.15,
            ease: 'power2.out',
            duration: 0.3
        });
        this.el.style.zIndex = 10;
    }
    onLeave() {
        gsap.to(this.el, {
            x: 0,
            y: 0,
            // scale: 1,
            ease: 'elastic.out(1.2, 0.3)',
            duration: 0.7
        });
        this.el.style.zIndex = 1;
    }
}

const btn1 = document.querySelector('.image__center');
new HoverButton(btn1);