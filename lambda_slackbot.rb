require 'slack-ruby-client'
require 'json'
TOKEN = ENV['SLACK_TOKEN']

def slack_post
  Slack.configure do |conf|
    conf.token = TOKEN
  end

  client = Slack::Web::Client.new
  p client.auth_test
  client.chat_postMessage(channel: 'C9LGQ06LT', text: 'Hello World', as_user: true)
end

slack_post
