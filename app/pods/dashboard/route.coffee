`import Ember from 'ember'`
# `import RssFeedWidget from '../rss-feed-widget/model.js'`

DashboardRoute = Ember.Route.extend
  model: ->
    # return Em.Object.create({name: 'Mitch'})
    debugger
    return @store.find 'dashboard'
    # return @modelFor 'rss-feed-widget'

`export default DashboardRoute`