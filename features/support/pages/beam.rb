class Beam
  def initialize(b)
    @browser = b
  end

  def landing_page
    @landing_page ||= LandingPage.new @browser
  end

  def login_page
    @login_page ||= LoginPage.new @browser
  end

  def home_page
    @home_page ||= HomePage.new @browser
  end

  def about_page
    @about_page ||= AboutPage.new @browser
  end

  def manage_channel_page
    @manage_channel_page ||= ManageChannelPage.new @browser
  end
end
