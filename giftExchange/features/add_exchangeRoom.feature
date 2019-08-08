 
Feature: Add an exchange room
  
  As a secrete santa
  So that I can manage my secret santa gifts
  I want to be able to create an exchange room
  
  Scenario: As a secret santa I want to be able to navigate from the join page to the create an exchange room page
    Given I am on the create Xchange room page
    When I click on the "New Room" link
    Then I should be on the "Create a New Room" page
    And I should see the "Room Code" field
    And I should see the "Room Password" field

  Scenario: As a secret santa I want to be able to create an exchange room
    Given I am on the create Xchange room page
    When I click on the "New Room" link
    And I fill in "Room Code" with "Test Room"
    And I fill in "Room Password" with "password"
    When I click on the "Save Room" button
    Then I should see "Room code: Test Room"
    And I should see "Room Password: password"