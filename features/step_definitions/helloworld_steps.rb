Given(/^I meet someone who speaks (.*?)$/) do |language|
  @browser.goto 'http://localhost:8000/'
  @language = language_key language
end

Then(/^I say hello$/) do
  @browser.select(id: 'selector').select @language
end

Then(/^the greeting is "(.*?)"$/) do |greeting|
  @browser.div(id: 'greeting').text.should include greeting
end

Given(/^I visit the hello world app$/) do
  @browser.get 'http://localhost:8000/'
end

Then 'the default greeting is "Hello, World!"' do
  @browser.div(id: 'greeting').text.should include 'Hello, World!'
end

When(/^I clear the message$/) do
  @browser.link_elements.first.click
end

Then(/^the greeting "(.*?)" is not displayed$/) do |arg1|
  @browser.div(id: 'greeting').text.should_not include 'Hello, World!'
  @browser.div(id: 'greeting').text.should eq ''
end
