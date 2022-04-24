require "slack-notify"
require 'clockwork'
sample = SlackNotify::Client.new(webhook_url: 'https://hooks.slack.com/services/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')

include Clockwork

handler do |job|
  puts "Running #{job}"
  sample.test
end

every(3.minutes, "Don't forget our goal")
