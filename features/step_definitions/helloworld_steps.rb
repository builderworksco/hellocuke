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


