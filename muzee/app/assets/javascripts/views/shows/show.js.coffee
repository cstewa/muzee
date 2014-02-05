class Muzee.Views.Show extends Backbone.View

  template: JST['shows/show']

  events:
    'click': 'showShow'

  showShow: ->
    Backbone.history.navigate("shows/#{@model.get('id')}", true)

  render: ->
    $(@el).html(@template(show: @model)) #each view has a dedicated html element - el
    this
