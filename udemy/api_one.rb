require 'rubygems'
require 'httparty'

class EdutechionalRasty
  include HTTParty
  base_uri "edutechional-resty.herokuapp.com"

  def posts
    self.class.get('/posts.json')
  end
end

edu = EdutechionalRasty.new
p edu.posts

edu.posts.each do |post|
  p "Title: #{post['title]} | Description: #{post['description']}"
end

response = HTTParty.get('http://api.stackexchange.com/2.2/')
puts response.body
puts response.message
puts response.code
puts response.headers.inspect

class StackExchange
  include HTTParty
  base_uri 'api.stackexchange.com'

  def initialize(service, page)
    @options = {query: {site: service}}
  end

  def questions
    self.class.get('/2.2/questions', @options)
  end

  def users
    self.class.get('/2.2/users', @options)
  end

end

stack_exchange = StackExchange.new('stackoverflow', 1)
puts stack_exchange.questions


