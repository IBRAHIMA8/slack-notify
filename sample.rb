require "slack-notify"
require 'clockwork'
sample = SlackNotify::Client.new(webhook_url: 'SLACK_TOKEN')

include Clockwork

handler do |job|
  puts "Running #{job}"
  sample.test
end

every(3.minutes, "Don't forget our goal")
