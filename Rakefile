ENV['RAILS_VERSION'] ||= '3'
begin
  require 'bundler/setup'
rescue LoadError
  puts 'You must `gem install bundler` and `bundle install` to run rake tasks'
end

Bundler::GemHelper.install_tasks

require 'rake/testtask'

Rake::TestTask.new(:test_runtime) do |t|
  t.warning = true
end


task :test do
  puts "testing execjs runtimes\n"
  ['Node','RubyRacer','JavaScriptCore'].each do |t|
    ENV['EXECJS_RUNTIME'] = t
    puts "\nEXECJS_RUNTIME=#{t}"
    Rake::Task["test_runtime"].execute
  end
end


task :default => :test
