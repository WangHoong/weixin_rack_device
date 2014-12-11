$:.push File.expand_path("../lib", __FILE__)  
require "weixin/version"

Gem::Specification.new do |s|

    s.name = 'weixin_rack_device'
    s.version = Weixin::VERSION 

    s.description = 'Rack middleware for Weixin apps: message validation/parser/generator'
    s.summary = 'Rack middleware for Weixin apps'

    s.authors = ['whq321']
    s.email = 'whq321@163.com'

    s.files = `git ls-files`.split("\n")
    s.test_files = s.files.select {|path| path =~ /^spec\/.*_spec\.rb/}

    s.add_dependency 'rack'
    s.add_dependency 'multi_json', '>= 1.7.9'
    s.add_dependency 'multi_xml', '>= 0.5.2'
    s.add_dependency 'roxml'
    s.add_dependency 'nestful'

    s.add_development_dependency 'rake'
    s.add_development_dependency 'rack-test'
    s.add_development_dependency 'rspec', '>= 2.0.0'

    s.homepage = 'https://github.com/whq321/weixin_rack_device'
    s.require_paths = %w[lib]
    s.required_ruby_version = '>= 1.8.6'
end
