When(/^I update the Stream title$/) do
  @beam.manage_channel_page.confirm_description_update
end

When(/^I update the Game You're Streaming$/) do
  @beam.manage_channel_page.update_game_streaming
end

Then(/^I should see them saved$/) do
  @beam.manage_channel_page.confirm_save_alert
end
