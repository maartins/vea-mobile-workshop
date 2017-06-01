Feature: Filters

  Scenario: Swipe intro screen
    When I swipe intro screen  

  Scenario: Add empty filter
    When I close intro screen
    When I create empty filter

  Scenario: Add positive filter
    When I close buy filter screen
    When I create filter with name and price