require 'rubocop/rake_task' 

task default: %w[lint test]

RuboCop::RakeTask.new(:lint) do |task|
  task.patterns = ['lib/**/*.rb', 'test/**/*.rb']
  task.options = ['--auto-correct-all']
  task.fail_on_error = false
end



task :run do
  ruby 'lib/today_i_learned.rb'
end

task :test do
  ruby 'test/today_i_learned_test.rb'
end

