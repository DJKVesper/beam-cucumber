class LandingPage < GenericPage

  def visit
    # base_url is also the url for the landing page
    goto_base_url
  end

  # Wait for this page's unique element to load
  def confirm_on_page
    @browser.div(class: 'home').wait_until_present(5)
  end
end
