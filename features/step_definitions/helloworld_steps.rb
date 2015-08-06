Given(/^I meet someone who speaks (.*?)$/) do |language|
  visit_page HelloworldPage
  @language = language_key language
end

Then(/^I say hello$/) do
  @current_page.selector = @language
end

Then(/^the greeting is "(.*?)"$/) do |greeting|
  @current_page.greeting.should include greeting
end

Given(/^I visit the hello world app$/) do
  visit_page HelloworldPage
end

Then 'the default greeting is "Hello, World!"' do
  @current_page.greeting.should include 'Hello, World!'
end

When(/^I clear the message$/) do
  @current_page.clear_greeting
end

Then(/^the greeting "(.*?)" is not displayed$/) do |arg1|
  require 'pry'
  binding.pry
  @current_page.greeting.should_not include 'Hello, World!'
  @current_page.greeting.should eq ''
end
