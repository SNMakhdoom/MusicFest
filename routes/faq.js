const express = require('express');
const router = express.Router();

// FAQ data
const faq = [
    { title: 'What is MusicFest?', answer: 'MusicFest is a month-long celebration of music, bringing together talented artists from around the world.' },
    { title: 'How can I purchase tickets?', answer: 'Tickets can be purchased online through our website or at the venue during the event.' },
    { title: 'Are there age restrictions for the event?', answer: 'MusicFest is open to all ages. However, some stages or activities may have age restrictions, which will be clearly indicated.' },
    { title: 'Can I bring my own food and drinks?', answer: 'Outside food and drinks are not allowed. However, there will be a wide range of food and beverage options available for purchase at the event.' },
    { title: 'Is there parking available?', answer: 'Yes, there will be designated parking areas available near the event venue. Additional information about parking will be provided closer to the event date.' },
    { title: 'Are pets allowed at MusicFest?', answer: 'Pets are not allowed at the event, with the exception of certified service animals.' },
];

router.get('/', (req, res) => {
    res.render('faq', { faq });
});

module.exports = router;
