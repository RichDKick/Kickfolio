'use strict'

// start coding here
var express = require('express')
var app = express()

app.get('/', function (req, res) {
  res.send('Hello World')
})

app.get('/about', function (req, res) {
  res.send('About Kick')
})

app.use(express.static('public'))

app.listen(80)

// respond with "hello world" when a GET request is made to the homepage
app.get('/', function (req, res) {
  res.send('hello world')
})
