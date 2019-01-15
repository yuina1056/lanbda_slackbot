require 'json'
require 'slack'

def slack_post(channel, message)
  Slack.configure do |config|
    config.token = ENV['SLACK_TOKEN']
  end
  Slack.chat_postMessage(channel: channel, text: message)
end

def lambda_handler(event:, context:)
  slack_post('#general', 'testMessage')
  # TODO implement
  { statusCode: 200, body: JSON.generate('Hello from Lambda!') }
end
slack_post('#general', 'testMessage')
