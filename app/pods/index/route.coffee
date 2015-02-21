`import Ember from 'ember'`
`import RssFeedWidget from '../rss-feed-widget/model.js'`

IndexRoute = Ember.Route.extend
  model: ->
    # return Em.Object.create({name: 'Mitch'})
    return RssFeedWidget

`export default IndexRoute`
