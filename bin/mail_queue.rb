#!/usr/bin/env bundle exec ruby

require 'mail_queue'

MailQueue::Consumer.run(Dir.pwd)
