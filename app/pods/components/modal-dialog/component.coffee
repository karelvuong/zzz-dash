`import Ember from 'ember'`

ModalDialogComponent = Ember.Component.extend
  actions:
    close: ->
      return @sendAction();

`export default ModalDialogComponent`
