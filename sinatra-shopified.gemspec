lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "sinatra/shopified/version"

Gem::Specification.new do |spec|
  spec.name          = "sinatra-shopified"
  spec.version       = Sinatra::Shopified::VERSION
  spec.authors       = ["Tyler King"]
  spec.homepage      = "http://tylerking.me/"
  spec.email         = ["tyler.n.king@outlook.com"]

  spec.summary       = "Shopify apps with Sinatra"
  spec.description   = "Provides some boilerplate helpers and routes for Shopify apps with Sinatra"
  spec.homepage      = "https://github.com/tyler-king/sinatra-shopified"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency "shopify_api", "~> 4.0"
  spec.add_dependency "sinatra", "~> 1.4"
  spec.add_dependency "sinatra-activerecord", "~> 2.0"
  spec.add_development_dependency "yard", "~> 0.8"
  spec.add_development_dependency "inch", "~> 0.7"
end