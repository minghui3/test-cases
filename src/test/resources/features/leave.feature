Feature: Apply Leave

    Background:
        Given I am on the login page     
        And I fill in the email as "superman@dailyplanet.com"     
        And I fill in the password as "epassword"     
        When I click on the login button     
        Then I see the alert "Login successful"
        And I accept the alert


    @f5c54a16-3aa7-4199-ae2a-0885d6e86345
    Scenario: Successful leave application
        Given I am on the leave form page
        And I select "Sick Leave" as the type
        And I select "Alice Johnson" as the approver
        And I enter "2024-12-15" as the start date
        And I enter "2024-12-20" as the end date
        And I enter "Medical checkup" as the reason
        When I click on the apply button
        Then I should see a submission confirmation


    @a9280879-cf02-414c-bf94-0739729941da
    Scenario: Unsuccessful leave application
        Given I am on the leave form page
        And I select "Personal Leave" as the type
        And I select "Clark Clent" as the approver
        And I enter "2024-12-12" as the start date
        And I enter "2024-12-20" as the end date
        When I click on the apply button
        Then I see the alert "Please fill out all required fields before submitting the form."
