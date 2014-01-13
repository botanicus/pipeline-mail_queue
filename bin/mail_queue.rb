#!/usr/bin/env ruby

require 'mail_queue'

plugin = MailQueue.new(Dir.pwd)
plugin.run
