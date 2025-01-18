Feature: Employee Login

    @2178f7af-1cdf-4167-b9a4-c23f05f3fc42
    @tag1 @tag2 a @tag3
    Scenario: Successful login attempt
        Given I am on the login page     
        And I fill in the email as "superman@dailyplanet.com"     
        And I fill in the password as "epassword"     
        When I click on the login button     
        Then I see the alert "Login successful"

    @c6599374-859f-4e7f-bc87-9d8cf85b21f1
    @tag2 @tag4
    Scenario: Successful login attempt
        Given I am on the login page     
        And I fill in the email as "superman@dailyplanet.com"     
        And I fill in the password as "epassword"     
        When I click on the login button     
        Then I see the alert "asdasdasd"

    @76ad4e49-6b63-4e18-8158-424532068d21
    Scenario: Unsuccessful login attempt
        Given I am on the login page     
        And I fill in the email as "superman@as.com"     
        And I fill in the password as "asdasdasdasdasdasd"     
        When I click on the login button     
        Then I see the alert "Invalid email or password given"

    
    



