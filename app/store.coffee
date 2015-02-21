`import DS from 'ember-data'`

Store = DS.Store.extend
  revision: 12
  adapter: 'DS.FixtureAdapter'

`export default Store`
