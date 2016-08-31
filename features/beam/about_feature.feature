Feature: About Feature

  As a new viewer coming to the site
  I would like an about page (learn more)
  So that I may understand what the website is all about

    Scenario: See all 3 features
      Given user navigate to the about page
      When user select Features tab
      Then user should see the Features page
      When user select Roadmap tab
      Then user should see the Roadmap page
      When user select The Team tab
      Then user should see the The Team page
