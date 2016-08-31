Given(/^user navigates to beam\.pro$/) do
  @beam.landing_page.visit
end

Given(/^user navigate to the about page$/) do
  @beam.about_page.visit_features
end

Given(/^I navigate to Manage Channel$/) do
  @beam.manage_channel_page.visit
end
