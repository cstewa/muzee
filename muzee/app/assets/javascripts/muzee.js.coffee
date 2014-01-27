window.Muzee =
  Models: {}
  Collections: {}
  Views: {}
  Routers: {}
  # Right now we are routing to the fan search page. change this later
  initialize: ->
    new Muzee.Routers.Shows()
    Backbone.history.start() #tells it to have the homepage be this?

$(document).ready ->
  Muzee.initialize()
