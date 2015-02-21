`import Ember from 'ember'`

ApplicationRoute = Ember.Route.extend
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

`export default ApplicationRoute`
