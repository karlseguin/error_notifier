# ErrorNotifier #
Posts exceptions to a web service. Useful for use in Rack applications.

## Configuration ##
Configure ErrorNotifier via `ErrorNotifier.configure`:

	ErrorNotifier.configure do |config|
	  config.url = 'http://health.mysite.com/errors'
	  config.site = 'mysite' #an identifier for this site
	end

## Sending ##
Use `ErrorNotifier.send` to send exceptions:

	ErrorNotifier.send(e)
	# or, with options
	ErrorNotifier.send(e, {:user => @current_user})

## Rack ##
`ErrorNotifier::Rack` is a rack middleware which will capture exceptions and post them to the specified site. For example, in Rails, once need only specify:

	config.middleware.use ErrorNotifier::Rack

within `application.rb`