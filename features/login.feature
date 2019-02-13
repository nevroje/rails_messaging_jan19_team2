Feature: User can login

As a user
In order to access my account
I should be able to login

Background:
    Given I visit the "landing" page
    And The following user exist
        | name     | email                | password    | password_confirmation |
        | Per Hegg | per_hegg@hotmail.com | pereriksson | pereriksson           |


Scenario: Successfully create an article [Happy Path]

    When I click on "Login"    
    And I fill in "Email" with "per_hegg@hotmail.com"
    And I fill in "Password" with "pereriksson"
    And I click "Login" button
    Then I should see "Signed in successfully." on the page
    # And I should see "Article was successfully created."
    # And I should see "Learning Rails 5"
    # And I should see "Excited about learning a new framework"