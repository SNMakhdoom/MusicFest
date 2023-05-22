const express = require('express');
const router = express.Router();
const contactModel = require('../models/contact');

router.get('/', (req, res) => {
    res.render('contact');
});

router.post('/', async (req, res) => {
    try {
        const { name, email, message } = req.body;
        await contactModel.saveContactForm(name, email, message);
        res.redirect('/contact?message=success');
    } catch (error) {
        console.error('Error submitting form:', error);
        res.status(500).send('Internal Server Error');
    }
});

module.exports = router;
