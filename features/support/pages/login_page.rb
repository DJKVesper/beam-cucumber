class LoginPage < GenericPage

  def visit
    @browser.goto "#{base_url}users/login"
    confirm_on_page
  end

  def confirm_on_page
    @browser.label(text: 'Username or Email').wait_until_present(5)
  end

  def incorrect_login_message
    @browser.div(class: 'alert alert-danger a fadeInUp-enter fadeOutUp-leave').wait_until_present(5)
  end

  def login_using option
    if option == :valid || option == :invalid
      # so the code would like like: CREDENTIALS[:unpack][:valid/:invalid][:"email-address"/:password]
      email_field.set CREDENTIALS[:user][option][:email_address]
      password_field.set CREDENTIALS[:user][option][:password]
    elsif option == :email_wrong_format
      email_field.set 'a'
      password_field.set 'haha'
    else
      puts "Something has gone wrong"
    end
    # click the login button
    login_btn.click
  end

  private

    def login_btn
      @browser.button(text: 'Log in')
    end

    def email_field
      @browser.text_field(id: 'input_3')
    end

    # PASSWORD FIELD
    def password_field
      @browser.text_field(id: 'input_4')
    end
end
