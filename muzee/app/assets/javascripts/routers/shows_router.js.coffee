class Muzee.Routers.Shows extends Backbone.Router
  routes:
    '' : 'index' #when you get to this page, run this function
    'shows' : 'show_index' #refers to all the venues available for that given day

  initialize: ->
    @collection = new Muzee.Collections.Shows()
    @collection.fetch()

  index: ->
    #might need to rename this later to have like a top_toolbar reusable view
    alert "yay for homepage"

  show_index: ->
    view = new Muzee.Views.ShowsIndex(collection: @collection)
    $('#left_container').html(view.render().el) #look at your view file, see "render" function and element within it, which itself has a template

