'use strict'

exports.Index = function(request, response){
  response.render('home', {
    test: 'Hi'
  });
};
