# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'rabbitmq/http/client/version'

Gem::Specification.new do |gem|
  gem.name          = "rabbitmq_http_api_client"
  gem.version       = RabbitMQ::HTTP::Client::VERSION
  gem.authors       = ["Michael Klishin"]
  gem.email         = ["michael@clojurewerkz.org"]
  gem.description   = %q{RabbitMQ HTTP API client for Ruby}
  gem.summary       = %q{RabbitMQ HTTP API client for Ruby}
  gem.homepage      = "http://github.com/ruby-amqp/rabbitmq_http_api_client"
  gem.licenses      = ["MIT", "MPL-2.0"]

  gem.files         = Dir["ChangeLog.md", "LICENSE.txt", "README.md", "lib/**/*"]
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]

  gem.add_dependency    "hashie",             "~> 3.2"
  gem.add_dependency    "multi_json",         "~> 1.9"
  gem.add_dependency    "faraday",            "~> 0.12.1"
  gem.add_dependency    "faraday_middleware", "~> 0.11.0.1"
  gem.add_dependency    "effin_utf8",         "~> 1.0.0"
end
