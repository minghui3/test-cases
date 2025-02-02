Feature: Employee Login


    @3d2df973-fff3-4b4e-8db9-273ac463b600
    @tag1 @tag2 a @tag3
    Scenario: Successful login attempt
        Given I am on the login page     
        And I fill in the email as "superman@dailyplanet.com"     
        And I fill in the password as "epassword"     
        When I click on the login button     
        Then I see the alert "Login successful"


    @2873623e-876c-4d94-a97a-1c551f3c4815
    @tag2 @tag4
    Scenario: Successful login attempt
        Given I am on the login page     
        And I fill in the email as "superman@dailyplanet.com"     
        And I fill in the password as "epassword"     
        When I click on the login button     
        Then I see the alert "asdasdasd"


    @7bdd6d01-9ad3-4e56-954b-52873212bcf4
    Scenario: Unsuccessful login attempt
        Given I am on the login page     
        And I fill in the email as "superman@as.com"     
        And I fill in the password as "asdasdasdasdasdasd"     
        When I click on the login button     
        Then I see the alert "Invalid email or password given"

    
    



