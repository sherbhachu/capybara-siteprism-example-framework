Feature: Google Search

  Background:
    Given I have successfully navigated to the Google homepage
    And I enter "Cucumber" as the search term

  Scenario: Assert that all of the main search result titles contain the word ‘cucumber’
    Then I can see that All search result titles contain the word "Cucumber"

  Scenario: Assert that all of the main search result descriptions contain the word ‘cucumber’
    Then I can see that All search result descriptions contain the word "Cucumber"
