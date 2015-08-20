require 'rubygems'
require 'cucumber'
require 'cucumber/rake/task'

Cucumber::Rake::Task.new(:features) do |t|
  t.profile = 'default'
end

Cucumber::Rake::Task.new(:headless) do |t|
  ENV['HEADLESS'] = 'true'
  t.cucumber_opts = "-f pretty -f html --out hellocukes.html"
end

Cucumber::Rake::Task.new(:server) do |t|
  `ruby -run -ehttpd app -p8000`
end

task :default => :features
