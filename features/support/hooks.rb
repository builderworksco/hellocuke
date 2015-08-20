require 'watir-webdriver'

Before do
  @browser = Watir::Browser.new :chrome
end

After do |scenario|
  @browser.close
end
