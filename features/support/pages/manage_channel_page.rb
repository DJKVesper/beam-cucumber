class ManageChannelPage < GenericPage
  def visit
    @browser.goto "#{base_url}me/channel"
    confirm_on_page
  end

  def confirm_on_page
    @browser.h3(text: 'Manage Channel').wait_until_present(5)
  end

  def update_stream_title
    # Simple Checker that the user can set and save, will make a comparison method to check previous and new to see if actually saved.
    # Currently adding all the methods/variables needed to make it a possiblity
    stream_title_field.set "#{test_title_string}"
  end

  def update_game_streaming
    game_youre_streaming_field.set "#{test_game_stream_string}"
  end

  def click_save
    save_button_field.click
  end

  def confirm_save_alert
    raise unless saved_settings_alert.wait_until_present(5)
  end

  def confirm_description_update
    # Problem with reurning the text once it's been set to allow comparison
    # This section is used to set up the description with pre-defined strings to check against

    # This checks to see if there is anything of value in the fields, if there isn't, it gets set with a default name, otherwise, it uses the name already on the screen
    # if stream_title_value != "" && stream_game_value != ""
    #   pre_test_title = "#{stream_title_value}"
    #   pre_test_game = "#{stream_game_value}"
    # else
    stream_title_field.set "#{test_title_string}"
    game_youre_streaming_field.set "#{test_game_stream_string}"
    sleep(2)
    stream_game_highlight.click

    # Gets the value from the webpage
    pre_test_title = stream_title_value
    pre_test_game = stream_game_value

    sleep(2)
    save_button_field.click

    #This is to make sure it sees the Save message
    raise unless saved_settings_alert.wait_until_present(5)

    # This is to check that the description have been saved as the pre-defined string or autogenerated string
    raise unless pre_test_title == stream_title_value || test_title_string
    raise unless game_youre_streaming_field == stream_game_value || test_game_stream_string

    # We will now give a new descrition, then check that the previous description has been saved over
    # Sets the Inputs with the new scenario name
    stream_title_field.set "#{post_test_title_string}"
    game_youre_streaming_field.set "#{post_test_stream_string}"
    # touches on the correct highlight
    sleep(2)
    stream_game_highlight.click

    save_button_field.click

    #This is too make sure it sees the Save message
    raise unless saved_settings_alert.wait_until_present(5)

    # Gets the value from the webpage
    new_test_title = stream_title_value
    new_test_stream = stream_game_value

    # This now compares what was previously on the page vs what we have now, If it ever equals the same, it'll fail
    raise unless pre_test_title != new_test_title
    raise unless pre_test_game != new_test_stream
  end

  def stream_title_value
    stream_title_field.value
  end

  def stream_game_value
    game_youre_streaming_field.value
  end

  private
    def stream_title_field
      @browser.text_field(id: 'input_1')
    end

    # PASSWORD FIELD
    def game_youre_streaming_field
      @browser.text_field(id: 'fl-input-11')
    end

    def save_button_field
      @browser.button(class: 'md-primary md-raised md-button md-ink-ripple')
    end

    def test_title_string
      "Stream Title Test 1"
    end

    def test_game_stream_string
      "Undertale"
    end

    def post_test_title_string
      "New Title Test Stream"
    end

    def post_test_stream_string
      "Development"
    end

    def saved_settings_alert
      @browser.span(class: 'ngani md-toast-text ng-binding flex')
    end

    def stream_game_highlight
      @browser.span(class: 'highlight')
    end
end
