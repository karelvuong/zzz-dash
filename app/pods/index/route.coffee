`import Ember from 'ember'`

IndexRoute = Ember.Route.extend
  model: ->
    return Em.Object.create({name: 'Mitch'})

  actions:
    openModal: (modalName, model) ->
      @controllerFor(modalName).set('model', model);
      return @render(modalName, {
        into: 'application',
        outlet: 'modal'
      })

    closeModal: ->
      return @disconnectOutlet
        outlet: 'modal',
        parentView: 'application'

`export default IndexRoute`
