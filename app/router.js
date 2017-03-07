var HomeController = require('./controllers/HomeController');
var ProjectsController = require('./controllers/ProjectsController');
var ProjectController = require('./controllers/ProjectController');

// Routes
module.exports = function(app){

    // Main Routes
    app.get('/', HomeController.Index);
    app.get('/projects', ProjectsController.Index);
    app.get('/project', ProjectController.Index);

};
