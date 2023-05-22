const express = require('express');
const app = express();
const path = require('path');
const lineupModel = require('./models/lineup');
const stagesRoutes = require('./routes/stages');
const faqRoutes = require('./routes/faq');
const contactRoutes = require('./routes/contact');

// Set the view engine to ejs
app.set('view engine', 'ejs');
app.set('views', path.join(__dirname, 'views'));

// Middleware for parsing request body
app.use(express.json());
app.use(express.urlencoded({ extended: true }));

// Middleware for serving static files (CSS, images, etc.)
app.use(express.static(path.join(__dirname, 'public')));

// Use lineup routes
const lineupRoutes = require('./routes/lineup');
app.use('/lineup', lineupRoutes);
app.use('/stages', stagesRoutes);
app.use('/faq', faqRoutes);
app.use('/contact', contactRoutes);
// Function to shuffle an array in-place using Fisher-Yates algorithm
function shuffleArray(array) {
    for (let i = array.length - 1; i > 0; i--) {
        const j = Math.floor(Math.random() * (i + 1));
        [array[i], array[j]] = [array[j], array[i]];
    }
    return array;
}

// Function to select random highlights from the lineup
function getRandomHighlights(lineup, count, previousHighlights) {
    const shuffledLineup = shuffleArray([...lineup]);
    const newHighlights = shuffledLineup.filter(item => !previousHighlights.includes(item.id));
    return newHighlights.slice(0, count);
}

// Global variable to store previously selected highlights
let previousHighlights = [];

// Handle requests to the home page
app.get('/', async (req, res) => {
    try {
        const lineup = await lineupModel.getLineup();
        const lineupHighlights = getRandomHighlights(lineup, 10, previousHighlights);
        previousHighlights = lineupHighlights.map(item => item.id);
        res.render('index', { lineup: lineupHighlights });
    } catch (error) {
        console.error('Error retrieving lineup:', error);
        res.render('index', { lineup: [] });
    }
});

// Start the server
app.listen(3000, () => {
    console.log('Server is running on port 3000');
});
