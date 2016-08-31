Selenium::WebDriver::Chrome.driver_path = "#{Dir.pwd}/webdrivers/chromedriver" if OS.mac?
browser = Watir::Browser.new (ENV['PHANTOMJS'] || 'chrome').to_sym

Before do
  @browser = browser
  @browser.cookies.clear
  @browser.window.maximize
  @beam = Beam.new @browser
end

# After all features have executed
at_exit do
  browser.close
end
