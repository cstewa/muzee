class Muzee.Views.ShowsIndex extends Backbone.View

  template: JST['shows/index']

  initialize: ->
    @collection.on('reset', @render, this)

  render: ->
    $(@el).html(@template(shows: @collection)) #each view has a dedicated html element - el
    this