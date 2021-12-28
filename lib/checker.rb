# checker.rb
require 'rubygems' 
require 'curb'


def checkgems(gem_name)
    status = Curl.get("https://rubygems.org/gems/#{gem_name}").status
end
