'use strict'

// Dependencies
const express = require('express')
const exphbs = require('express-handlebars')
const path = require('path')

// Create an express app
const app = express()

// Set the view engine to be handlebars
const hbs = exphbs.create({
  defaultLayout: 'main',
  partialsDir: 'app/views/partials/',
  layoutsDir: 'app/views/layouts/'
})
app.engine('handlebars', hbs.engine)
app.set('view engine', 'handlebars')
app.set('views', path.join(__dirname, '/views'))

// Routes
app.get('/', function (req, res) {
  res.render('home', {
    test: 'Hi'
  });
});

// Expose public folder
app.use(express.static('public'));
app.use(express.static('materialize'));

// Start listening on port
app.listen(80);
