Feature: Descriptions Feature

  As a streamer, I want to update the description of my stream
  So that my viewers know what I am playing

  Background: Logged In
    Given user navigates to beam.pro
    When the user logins with valid credentials
    Then they should be logged in

    Scenario: Streaming a new game (Manage Channel Settings)
      Given I navigate to Manage Channel
      When I update the Stream title
      And I update the Game You're Streaming
      Then I should see them saved
