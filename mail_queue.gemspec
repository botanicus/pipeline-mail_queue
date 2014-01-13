#!/usr/bin/env gem build

$LOAD_PATH.unshift(File.expand_path('../lib', __FILE__))

require 'mail_queue/version'

Gem::Specification.new do |s|
  s.name = 'mail_queue'
  s.version = MailQueue::VERSION
  s.authors = ['@botanicus']
  s.homepage = 'http://github.com/botanicus/mail_queue'
  s.summary = "Pipeline.rb plugin for sending emails through Gmail SMTP."
  # s.description = "#{s.summary}. "
  s.email = 'james@101ideas.cz'
  s.files = Dir.glob('**/*')
  s.license = 'MIT'
  s.require_paths = ['lib']
  s.executables = 'mail_queue.rb'

  s.add_dependency 'pipeline.rb'
  s.add_dependency 'mail'
end
