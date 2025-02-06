Feature: Apply Expense
    Background:
        Given I am on the login page     
        And I fill in the email as "superman@dailyplanet.com"     
        And I fill in the password as "epassword"     
        When I click on the login button     
        Then I see the alert "Login successful"
        And I accept the alert


    @f9504e98-48dc-4687-8676-4cd314a59900
    @c4418fe6-7713-4b3a-81e8-a9e9e8c8070e
    Scenario: Successful expense application
        Given I am on the expense form page
        And I select "Travel" as the type
        And I select "Diana Prince" as the approver
        And I enter "2024-11-15" as the expense date
        And I enter "639" as the expense amount
        And I enter "Business Travel to Germany" as the reason
        When I click on the apply button
        Then I should see a submission confirmation


    @bebc9219-dcc6-43b2-9b64-a1d6f9038b1f
    @c4418fe6-7713-4b3a-81e8-a9e9e8c8070e
    Scenario: Unsuccessful expense application
        Given I am on the expense form page
        And I select "Food & Drinks" as the type
        And I select "Diana Prince" as the approver
        And I enter "2024-11-10" as the expense date
        When I click on the apply button
        Then I see the alert "Please fill out all required fields before submitting the form."