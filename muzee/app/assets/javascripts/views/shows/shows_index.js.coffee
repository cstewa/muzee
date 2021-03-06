class Muzee.Views.ShowsIndex extends Backbone.View

  template: JST['shows/index']

  events:
    'submit #search_shows_by_date': 'displayShowsByDate'

  initialize: ->
    @collection.on('reset', @render, this)
    @collection.on('add', @appendShow, this)

  render: ->
    $(@el).html(@template()) #each view has a dedicated html element - el
    @collection.each(@appendShow)
    this

  appendShow: (show) ->
    view = new Muzee.Views.Show(model: show)
    $('#shows').append(view.render().el)

  #going to need to refactor this the url-way
  displayShowsByDate: (event) ->
    event.preventDefault()
    date = $('#date_to_search').val()
    @collection.fetch({data: $.param({date: date}), reset: true})
    console.log(@collection)
