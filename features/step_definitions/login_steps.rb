When(/^the user logins with (.+) credentials$/) do |option|
  @beam.login_page.visit

  unless ['valid', 'invalid'].include? option.downcase
    raise "The option could only be either 'valid' or 'valid'"
  end

  @beam.login_page.login_using option.downcase.to_sym
end

Then(/^they should be logged in$/) do
  @beam.home_page.confirm_on_page
end

Then(/^I should be informed that my credentials are incorrect$/) do
  @beam.login_page.incorrect_login_message
end
