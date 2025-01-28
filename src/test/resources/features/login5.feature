Feature: Employee Login

    @dd8d325c-ea6b-4fe6-94fc-7eb143a265e1
    @banana
    Scenario: Successful login attempt
        Given I am on the login page     
        And I fill in the email as "superman@dailyplanet.com"     
        And I fill in the password as "epassword"     
        When I click on the login button     
        Then I see the alert "Login successful"

    @b854cdc7-60df-4272-a7bf-cb430cf1dca1
    Scenario: Successful login attempt
        Given I am on the login page     
        And I fill in the email as "superman@dailyplanet.com"     
        And I fill in the password as "epassword"     
        When I click on the login button     
        Then I see the alert "asdasdasd"

    @167cd08b-f4fc-4ca7-a14b-01f389d5bf62
    Scenario: Unsuccessful login attempt
        Given I am on the login page     
        And I fill in the email as "superman@as.com"     
        And I fill in the password as "asdasdasdasdasdasd"     
        When I click on the login button     
        Then I see the alert "Invalid email or password given"
