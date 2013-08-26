require 'rss'
require 'sinatra'
require 'sinatra/reloader'

get '/' do
	@rss = RSS::Parser.parse("http://feeds.feedburner.com/hatena/b/hotentry")
	@entries = @rss.items
	erb :index
end
