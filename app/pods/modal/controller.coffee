`import Ember from 'ember'`

ModalController = Ember.Controller.extend
  actions:
    close: ->
      return @send('closeModal');

`export default ModalController`
