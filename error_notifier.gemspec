require File.expand_path('../lib/error_notifier', __FILE__)

Gem::Specification.new do |s|
  s.name               = 'error_notifier'
  s.homepage           = 'http://github.com/karlseguin/error_notifier'
  s.summary            = 'Post errors to an http server'
  s.require_path       = 'lib'
  s.authors            = ['Karl Seguin']
  s.email              = ['karl@openmymind.net']
  s.version            = ErrorNotifier::Version
  s.platform           = Gem::Platform::RUBY
  s.files              = Dir.glob("{lib}/**/*") + %w[license readme.markdown]

  s.add_dependency("rest-client", ["~> 1.6.7"])
  s.add_dependency("rack", ["~> 1.4.1"])
  s.add_dependency("json", ["~> 1.7.3"])
end