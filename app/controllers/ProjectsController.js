'use strict'

exports.Index = function(request, response){
  response.render('projects', {
    test: 'Hi'
  });
};
