require 'rss'
=begin
require 'sinatra'
require 'sinatra/reloader'
=end

@rss = RSS::Parser.parse("http://feeds.feedburner.com/hatena/b/hotentry")
p @rss[0]

__END__
get '/' do
	@rss = RSS::Parser.parse("http://feeds.feedburner.com/hatena/b/hotentry")
	@entries = @rss.items
	erb :index
end
