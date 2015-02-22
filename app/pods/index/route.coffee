`import Ember from 'ember'`
# `import RssFeedWidget from '../rss-feed-widget/model.js'`

IndexRoute = Ember.Route.extend
  model: ->
    $.ajax
      url: 'https://api.github.com/repos/karelvuong/fox/releases',
      type: 'get'

  afterModel: (model) ->
    $.ajax
      url: 'https://api.github.com/markdown'
      type: 'POST'
      contentType: 'application/x-www-form-urlencoded'
      dataType: 'text',
      data: JSON.stringify
        text: 'test'
        mode: 'gfm'
        context: 'karelvuong/fox'
    .then (text) ->
      model.body_html = text
      debugger
      console.log model
      model

`export default IndexRoute`
