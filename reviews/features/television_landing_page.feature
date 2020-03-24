@television_landing_page
Feature: Television Landing Page

  @in_progress
  Scenario: Product Card is displayed as per design
    Given I am on the Television page
    Then I can see Product Gallery section as per design

  @in_progress
  Scenario: Television Landing page display sort option with a selected default value
    Given I am on the Television page
    Then I can see following sort option
    |sort_option|
    |Most-recently reviewed|
    |Highest Which? score  |
    |Price (low to high)   |
    |Price (high to low)   |
    |Most-recently launched|

  Scenario: Products can be filtered by brand
    Given I am on the Television page
    And I can see option to filter the product
    When I filter by brand 'LG'
    Then I can see product gallery filtered by brand 'LG'