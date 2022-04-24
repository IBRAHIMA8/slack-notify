require "slack-notify"
require 'clockwork'
sample = SlackNotify::Client.new(webhook_url: 'https://hooks.slack.com/services/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')

include Clockwork

handler do |job|
  puts "Running #{job}"
  sample.test
end

every(3.minutes, "Don't forget our goal")
