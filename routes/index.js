const express = require('express');
const app = express();
const path = require('path');

// Require route handlers
const lineupRoutes = require('./routes/lineup');
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

// Use route handlers
app.use('/lineup', lineupRoutes);
app.use('/stages', stagesRoutes);
app.use('/faq', faqRoutes);
app.use('/contact', contactRoutes);

// Export the app instance
module.exports = app;
