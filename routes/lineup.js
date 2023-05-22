const express = require('express');
const router = express.Router();
const lineupModel = require('../models/lineup');

router.get('/', async (req, res) => {
    try {
        const lineup = await lineupModel.getLineup();
        res.render('lineup', { lineup });
    } catch (error) {
        console.error('Error retrieving lineup:', error);
        res.status(500).send('Internal Server Error');
    }
});

module.exports = router;
