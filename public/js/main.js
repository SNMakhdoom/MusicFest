document.addEventListener('DOMContentLoaded', function() {
    const contactForm = document.getElementById('contact-form');

    contactForm.addEventListener('submit', function(event) {
        const nameInput = document.getElementById('name');
        const emailInput = document.getElementById('email');
        const messageInput = document.getElementById('message');

        if (nameInput.value === '' || emailInput.value === '' || messageInput.value === '') {
            alert('All fields are required!');
            event.preventDefault();
        }
    });
});
