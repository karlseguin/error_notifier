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
end