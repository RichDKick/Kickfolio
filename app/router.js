'use strict'

const HomeController = require('./controllers/HomeController');
const ProjectsController = require('./controllers/ProjectsController');
const ProjectController = require('./controllers/ProjectController');

// Routes
module.exports = function(app){

    // Main Routes
    app.get('/', HomeController.Index);
    app.get('/projects', ProjectsController.Index);
    app.get('/project', ProjectController.Index);

};
