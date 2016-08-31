Feature:  Sparks Feature Functionality

  In order to ensure Sparks Functionality works,
  I want to run the cucumber test to verify it is working

  Background: Logged in
    Given user navigates to beam.pro
    When the user logins with valid credentials
    Then they should be logged in

    Scenario: User has Sparks
      Given the user is logged in
      Then the user should see an amount of Sparks

    Scenario: User Sparks increase with view
      Given the user have selected a stream to watch
      And the user watch for more than 2 minute
      Then the user should have more Sparks

    @unimplemnted
    Scenario: User can spend Sparks
      Given the user has selected an interactive stream to watch
      And the user selects an interactive button with spark cost
      Then the Sparks cost should be deducted from their total Sparks count
