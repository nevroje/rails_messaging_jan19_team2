Feature: User sign-up
    As a user
    In order to use this messaging service
     would like to to sign-up

Scenario: User visits page to sign-up
    When I visit the site
    Then I should see "CA Mailboxer" 
    When I click on "Sign up"
    And I fill in name with "Bob"
    And I fill in "email" with "bob@bobby.com"
    And I fill in "password" with "0443431157"
    And I fill in "password confirmation" with "0443431157"
    Then I click "Create"
