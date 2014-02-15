class Muzee.Collections.Shows extends Backbone.Collection

  model: Muzee.Models.Show

  url: '/api/shows'
  #GET /shows
  #POST /shows
  #GET /shows/{#id}
  #PUT "
  #DELETE "

  #dont think this is right
  search: (date) ->
    @fetch(data: { date: date, url: '/search' })

  parse: (data) ->
    return data.shows if data.shows

