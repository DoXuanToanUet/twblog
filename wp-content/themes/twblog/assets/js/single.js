var swiperFact = new Swiper(".fact-slider", {
    slidesPerView: 9.5,
    spaceBetween: 15,
    freeMode: true,
    loop: false,
    // speed: 1000,
    // autoplay: {
    //     delay: 5000,
    // },
    navigation: {
        nextEl: '.fact-button-next',
        prevEl: '.fact-button-prev',
    },
    breakpoints: {
        980: {
            slidesPerView: 6.5,
            freeMode: true,
            spaceBetween: 15,
        },
        580: {
            slidesPerView: 3.5,
            freeMode: true,
            spaceBetween: 10,
        },

    }
});
