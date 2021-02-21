require 'slack-notify'
require 'clockwork'
require 'active_support/time'
require 'dotenv'
Dotenv.load

module Clockwork
  sample = SlackNotify::Client.new(webhook_url: "https://hooks.slack.com/services/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")

  handler do |job|
    sample.notify(job)
  end

  every(3.minutes, 'Messaging every 3 minutes')
end
