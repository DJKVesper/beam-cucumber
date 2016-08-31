Given(/^the user is logged in$/) do
  @beam.home_page.logged_in?
end


Then(/^the user should see an amount of Sparks$/) do
  @beam.home_page.has_sparks?
end

Given(/^the user have selected a stream to watch$/) do
  # Leave the front page stream running
  @beam.home_page.confirm_on_page
end

Given(/^the user watch for more than (\d+) minute$/) do |minutes|
  @beam.home_page.compare_current_to_post_sparks(minutes)
end

Then(/^the user should have more Sparks$/) do
  @beam.home_page.updated_sparks?
end

Given(/^the user has selected an interactive stream to watch$/) do
  pending # express the regexp above with the code you wish you had
end

Given(/^the user selects an interactive button with spark cost$/) do
  pending # express the regexp above with the code you wish you had
end

Then(/^the Sparks cost should be deducted from their total Sparks count$/) do
  pending # express the regexp above with the code you wish you had
end
