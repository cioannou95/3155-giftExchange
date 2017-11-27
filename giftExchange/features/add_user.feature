Feature: Add a new user
  
  As a secret santa
  So that I can manage my secret santa gifts
  I want to be able to create a new account
  
  Scenario: As a secret santa I want to be able to navigate from the home page to the New User form
    Given I am on the home page
    When I click on the "Create Account" link
    Then I should be on the "Create Account" page
    And I should see the "First Name" field
    And I should see the "Last Name" field
    #And I should see the "username" field
    And I should see the "Password" field
    And I should see the "Email" field
    And I should see the "Address" field
    And I should see the "Wish List" field
    
  