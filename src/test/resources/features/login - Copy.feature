Feature: Employee Login


    @f65b2097-4d7a-4dd2-a7ac-892435345876
    @tag1 @tag2 a @tag3
    Scenario: Successful login attempt
        Given I am on the login page     
        And I fill in the email as "superman@dailyplanet.com"     
        And I fill in the password as "epassword"     
        When I click on the login button     
        Then I see the alert "Login successful"


    @85d5276f-1388-4fb9-a338-36c001cb16d1
    @tag2 @tag4
    Scenario: Successful login attempt
        Given I am on the login page     
        And I fill in the email as "superman@dailyplanet.com"     
        And I fill in the password as "epassword"     
        When I click on the login button     
        Then I see the alert "asdasdasd"


    @5751c6c4-6ddf-41e5-a949-640694c3ce53
    Scenario: Unsuccessful login attempt
        Given I am on the login page     
        And I fill in the email as "superman@as.com"     
        And I fill in the password as "asdasdasdasdasdasd"     
        When I click on the login button     
        Then I see the alert "Invalid email or password given"

    
    



