require 'rubocop/rake_task' 
require 'rake/testtask'
require 'dotenv'

require_relative 'lib/today_i_learned/notifier'
require_relative 'lib/today_i_learned/sms_client'


task default: %w[lint test]

RuboCop::RakeTask.new(:lint) do |task|
  task.patterns = ['lib/**/*.rb', 'test/**/*.rb']
  task.options = ['--auto-correct-all']
  task.fail_on_error = false
end

Rake::TestTask.new do |task|
 task.pattern = 'test/*_test.rb'
end

task :send_prompt do
  notifer = Notifier.new(SMSClient.new)
  notifer.send_notification
end

task :run do
  ruby 'lib/today_i_learned.rb'
end


