@smoke @regression
Feature: Admin Temporary Closure Page
As a user
I want to check the admin temporary closure page
So that I can manage temporary closures effectively

@positive @smoke
Scenario: Successful addition of new temporary closure
    Given the user is on admin temporary closure page
    When the user clicks on add new temporary closure button
    And the user enters valid temporary closure details with start date "2024-09-20" and end date "2024-09-25"
    Then the new temporary closure should be added successfully
    And the user should see a success message "Temporary closure added successfully"

@negative @regression
Scenario: Unsuccessful addition of new temporary closure with invalid dates
    Given the user is on admin temporary closure page
    When the user clicks on add new temporary closure button
    And the user enters invalid temporary closure details with start date "2024-09-25" and end date "2024-09-20"
    Then the user should see an error message "Invalid date range"

@regression
Scenario: Edge case - addition of new temporary closure with same dates
    Given the user is on admin temporary closure page
    When the user clicks on add new temporary closure button
    And the user enters temporary closure details with start date "2024-09-20" and end date "2024-09-20"
    Then the user should see a warning message "Temporary closure dates should have at least one day difference"