Feature: Site has a static welcome page
  In order to ensure the site is assembled correctly
  As a developer
  I want the new site to have a static welcome page

  Scenario: Site has a static welcome page
    When I visit the home page
    Then I recieve an ok status
    And the page contains "Welcome"
