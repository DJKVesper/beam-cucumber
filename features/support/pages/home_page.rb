class HomePage < GenericPage
  def visit
    @browser.goto "#{base_url}"
    confirm_on_page
  end

  def confirm_on_page
    @browser.h1(text: 'DJKVesper!').wait_until_present(10)
  end

  def logged_in?
    @browser.h1(text: 'DJKVesper!').wait_until_present(10)
  end

  def has_sparks?
    pre_sparks
    puts pre_sparks
  end

  def tap_avatar_icon
    @browser.button(class: 'md-small md-button md-ink-ripple').click
  end

  def compare_current_to_post_sparks(minutes_to_wait)

    if @browser.button(class: 'md-primary accountbtn md-button ng-scope md-ink-ripple').visible? == false
      @browser.button(class: 'md-small md-no-spacing md-button md-ink-ripple').click
    elsif @browser.button(class: 'md-primary accountbtn md-button ng-scope md-ink-ripple').visible? == true
      puts "Sidebar is currently open, do not open again"
    else
      puts "I don't know where I am right now"
    end

    @current_sparks =  @browser.div(class: 'be-hub__section be-hub__section--points be-u-p--v3').span(class: 'ng-binding').text

    sleep_total = minutes_to_wait.to_i * 60
    sleep(sleep_total)

    @post_sparks = @browser.div(class: 'be-hub__section be-hub__section--points be-u-p--v3').span(class: 'ng-binding').text
  end

  def updated_sparks?
    raise unless @post_sparks > @current_sparks
  end

  def pre_sparks
    @browser.span(class: 'ng-binding').text
  end
end
