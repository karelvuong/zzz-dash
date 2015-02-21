`import Ember from 'ember'`

IndexRoute = Ember.Route.extend
  model: ->
    return Em.Object.create({name: 'Mitch'})

`export default IndexRoute`
