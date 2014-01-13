# Useful resource:
# http://stackoverflow.com/questions/12884711/how-to-send-email-via-smtp-with-rubys-mail-gem

require 'mail'
require 'pipeline/plugin'

module MailQueue
  class Consumer < Pipeline::Plugin
    QUEUES = {emails: 'emails.#'}

    def run
      config = self.config(:smtp)

      Mail.defaults do
        puts "~ Starting with #{config.inspect}."
        delivery_method :smtp, config
      end

      client.consumer('emails', 'emails.#') do |blob, header, frame|
        mail = Mail.new(blob)
        puts "~ Sending email to #{mail.to}"
        mail.deliver
      end
    end
  end
end
