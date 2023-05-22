const express = require('express');
const router = express.Router();
const stagesModel = require('../models/stages');

router.get('/', async (req, res) => {
    try {
        const stages = await stagesModel.getStages();
        res.render('stages', { stages });
    } catch (error) {
        console.error('Error retrieving stages:', error);
        res.status(500).send('Internal Server Error');
    }
});

module.exports = router;
