`import DS from 'ember-data'`
# `import FeedItem from './mixins/foo'`

RssFeedWidget = DS.Model.extend {
  name: DS.attr 'string'
  url: DS.attr 'string'

  # feedItems: DS.hasMany('FeedItem'),

  refresh: Ember.observer ->
    url = @get 'url'
    googleUrl = document.location.protocol + '//ajax.googleapis.com/ajax/services/feed/load?v=1.0&num=10&callback=?&q=' + encodeURIComponent(url);
    $.ajax
      url: googleUrl
      dataType: 'json'
      context: this
      success: (data) ->
        feed = data.responseData.feed;
        items = feed.entries.forEach (entry) =>
          return if @get('feedItems').findProperty('link', entry.link)
          feedItem = @get('feedItems').createRecord
            title: entry.title
            author: entry.author
            body: entry.content
            bodySnippet: entry.contentSnippet
            link: entry.link
            publishedDate: entry.publishedDate
        @get('store').commit()
  }
}

RssFeedWidget.FIXTURES = [
  id: 1
  name: 'CodeBrief'
  url: 'http://codebrief.com/atom.xml'
,
  id: 2
  name: 'GroupTalent Blog'
  url: 'https://grouptalent.com/blog/feed.xml'
]

`export default RssFeedWidget`
