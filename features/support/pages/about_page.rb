class AboutPage < GenericPage

# I have not given each section a seperate page. Currently only checking for certain elements to exist, would
#   require access to the backend API to be able to check against what is sent and what is currently being displayed

### Pages to visit
  def visit_features
    @browser.goto "#{base_url}about/features"
    confirm_on_features_page
  end

  def visit_roadmap
    @browser.goto "#{base_url}about/roadmap"
    confirm_on_roadmap_page
  end

  def visit_team
    @browser.goto "#{base_url}about/team"
    confirm_on_team_page
  end

### Page Confirmers
  def confirm_on_features_page
    @browser.h1(text: 'Visual Controls').wait_until_present(2)
  end

  def confirm_on_roadmap_page
    @browser.h3(text: 'Beam Development Roadmap').wait_while_present(2)
  end

  def confirm_on_team_page
    @browser.a(text: '@ProbablePrime').wait_while_present(2)
  end

### Button Clickers
  def click_features_button
    features_button.click
  end

  def click_roadmap_button
    roadmap_button.click
  end

  def click_team_button
    team_button.click
  end

  private
    # Wait for this page's unique element to load
    def features_button
      @browser.span(text: 'Features')
    end

    def roadmap_button
      @browser.span(text: 'Roadmap')
    end

    def team_button
      @browser.span(text: 'The Team')
    end
end
