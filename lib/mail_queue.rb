class MailQueue < Pipeline::Plugin
  def run
    client.consumer('emails', 'emails.#') do |blob, header, frame|
      mail = Mail.new(blob)
      puts "~ Sending email to #{mail.to}"
      mail.deliver
    end
  end
end
