require 'slack-ruby-client'
require 'json'

def slack_post
  Slack.configure do |conf|
    conf.token = ENV['SLACK_TOKEN']
  end

  client = Slack::Web::Client.new
  p client.auth_test
  client.chat_postMessage(channel: '#general', text: 'Hello World')
end

slack_post
