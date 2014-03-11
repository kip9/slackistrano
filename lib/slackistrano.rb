require 'slackistrano/version'
require 'net/http'
require 'json'

load File.expand_path("../slackistrano/tasks/slack.rake", __FILE__)

module Slackistrano
  def self.post(team, token, payload)
    uri = URI("https://#{team}.slack.com/services/hooks/incoming-webhook")
    http = Net::HTTP.new(uri.host, 443)
    http.use_ssl = true
    request  = Net::HTTP::Post.new(uri.request_uri)
    request.set_form_data({ 'token' => token, 'payload' => payload.to_json })
    res = http.request(request)
  rescue => e
    puts "There was an error notifying Slack."
    puts e.inspect
  end
end

