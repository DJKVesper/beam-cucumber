When(/^user select Features tab$/) do
  @beam.about_page.click_features_button
end

Then(/^user should see the Features page$/) do
  @beam.about_page.confirm_on_features_page
end

When(/^user select Roadmap tab$/) do
  @beam.about_page.click_roadmap_button
end

Then(/^user should see the Roadmap page$/) do
  @beam.about_page.confirm_on_roadmap_page
end

When(/^user select The Team tab$/) do
  @beam.about_page.click_team_button
end

Then(/^user should see the The Team page$/) do
  @beam.about_page.confirm_on_team_page
end
