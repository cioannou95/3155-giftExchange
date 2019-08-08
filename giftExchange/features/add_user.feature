Feature: Add a new user
  
  As a secret santa
  So that I can manage my secret santa gifts
  I want to be able to create a new account
  
  Scenario: As a secret santa I want to be able to navigate from the home page to the New User form
    Given I am on the home page
    When I click on the "Create Account" button
    Then I should be on the "Create Account" page
    And I should see the "First Name" field
    And I should see the "Last Name" field
    And I should see the "Username" field
    And I should see the "Password" field
    And I should see the "Email" field
    And I should see the "Address" field
    And I should see the "Wish List" field
    
  Scenario: As a secret sata I want to be able to create an account
     Given I am on the home page
    When I click on the "Create Account" button
    And I fill in "First Name" with "Testing"
    And I fill in "Last Name" with "Tester"
    And I fill in "Username" with "The_tester"
    And I fill in "Password" with "password"
    And I fill in "Email" with "NULL@uncc.edu"
    And I fill in "Address" with "Tester's address"
    And I fill in "Wish List" with "All I want for Christmas"
    When I click on the "Save User" button
    Then I should be on the "List of Users" page
    And I should see "First Name: Testing"
    And I should see "Last Name: Tester"
    And I should see "Username: The_tester"
    And I should see "Password: password"
    And I should see "Email: NULL@uncc.edu"
    And I should see "Address: Tester's address"
    And I should see "Wish List: All I want for Christmas"