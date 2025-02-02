Feature: Employee Login


    @d425f9a1-5909-46e4-8c5b-0e858a9ab237
    @tag1 @tag2 a @tag3
    Scenario: Successful login attempt
        Given I am on the login page     
        And I fill in the email as "superman@dailyplanet.com"     
        And I fill in the password as "epassword"     
        When I click on the login button     
        Then I see the alert "Login successful"


    @46ef34fc-6fb9-4e89-a78d-464cb7e4623c
    @tag2 @tag4
    Scenario: Successful login attempt
        Given I am on the login page     
        And I fill in the email as "superman@dailyplanet.com"     
        And I fill in the password as "epassword"     
        When I click on the login button     
        Then I see the alert "asdasdasd"


    @e4371c6a-9439-4f0f-9ff3-8d48395d49d9
    Scenario: Unsuccessful login attempt
        Given I am on the login page     
        And I fill in the email as "superman@as.com"     
        And I fill in the password as "asdasdasdasdasdasd"     
        When I click on the login button     
        Then I see the alert "Invalid email or password given"

    
    



