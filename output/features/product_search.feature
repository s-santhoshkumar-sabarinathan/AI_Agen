@search @smoke @regression
Feature: Product Search
  As a user
  I want to search for products
  So that I can find and purchase the desired product

  @positive
  Scenario: Search for a valid product
    Given the user is on the homepage
    When the user searches for "Apple iPhone"
    Then the user should see a list of search results
    And the search results should contain "Apple iPhone"

  @negative
  Scenario: Search for a non-existent product
    Given the user is on the homepage
    When the user searches for "NonExistentProduct"
    Then the user should see "No results found"

  @regression
  Scenario: Search with empty search box
    Given the user is on the homepage
    When the user searches with an empty search box
    Then the user should see a validation error message "Please enter a search term"