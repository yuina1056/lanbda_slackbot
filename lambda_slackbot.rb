require 'slack-ruby-client'
require 'dotenv'
require 'json'

def slack_post
  Slack.configure do |conf|
    Dotenv.load
    conf.token = ENV['SLACK_TOKEN']
  end

  client = Slack::Web::Client.new
  p client.auth_test
  client.chat_postMessage(channel: '#general', text: 'Hello World')
end

def lambda_handler(event:, context:)
  slack_post
  # TODO: implement
  { statusCode: 200, body: JSON.generate('Hello from Lambda!') }
end
slack_post
