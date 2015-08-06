Before do
  @browser = Selenium::WebDriver.for(:chrome)
end

After do |scenario|
  @browser.close
end
