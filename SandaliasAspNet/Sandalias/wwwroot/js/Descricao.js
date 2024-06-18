let slideIndex = 0;
const slides = document.querySelectorAll('.slideshow img');
const dots = document.querySelectorAll('.dot');

function showSlides(index) {
    const totalSlides = slides.length;
    slideIndex = (index + totalSlides) % totalSlides; // Garantir que o índice seja circular
    const startIndex = slideIndex;
    const endIndex = startIndex + 3;
    slides.forEach((slide, i) => {
        if (i >= startIndex && i < endIndex) {
            slide.style.display = 'block';
        } else {
            slide.style.display = 'none';
        }
    });
    dots.forEach((dot, i) => {
        dot.classList.remove('active');
        if (i === Math.floor(slideIndex / 3) % 4) {
            dot.classList.add('active');
        }
    });
}

document.querySelector('.up-arrow').addEventListener('click', () => {
    slideIndex -= 3;
    showSlides(slideIndex);
});

document.querySelector('.down-arrow').addEventListener('click', () => {
    slideIndex += 3;
    showSlides(slideIndex);
});

showSlides(slideIndex);
