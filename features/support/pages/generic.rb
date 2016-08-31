class GenericPage
  include RSpec::Matchers

  attr_accessor :browser, :access_token

  def initialize(browser)
    @browser = browser
  end

  # Returns the current title of the browser window/tab
  def title
    @browser.title
  end

  # Returns the current url
  def url
    @browser.url
  end

  # method used to visit the Landing Page
  def goto_base_url
    @browser.goto base_url
  end

  # base url link (Landing Page link)
  def base_url
    if ENV['BASE_URL']
      ENV['BASE_URL']
    else
      'https://beam.pro/'
    end
  end

  # method used to wait for a particular element
  # doesn't work for nested referencing
  def wait_for_element(tag, attribute, attribute_value)
    verify_method_parameter(__method__, attribute)
    # syntax for using arguments with the 'send' method
    @browser.send(tag, attribute => attribute_value).wait_until_present
  end

  # valid arguments for the wait_for_element method
  def wait_for_element_options
    [:id, :class, :text, :span]
  end

  # method used to wait for a text to appear within the browser
  def wait_for_text(text)
    Watir::Wait.until { @browser.text.include? text }
  end
end
