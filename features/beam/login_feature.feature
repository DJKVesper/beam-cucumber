Feature: Login Functionality Feature

  In order to ensure Login Functionality works,
  I want to run the cucumber test to verify it is working

  Background: On the Beam Website
    Given user navigates to beam.pro

    Scenario: Successful Login Functionality
      When the user logins with valid credentials
      Then they should be logged in

    Scenario: Attempt to log in with invalid credentials
      When the user logins with invalid credentials
      Then I should be informed that my credentials are incorrect
