Feature: order coffee from a mobile app

  As a customer
  I need to place an order from my phone
  so that I can pick it up in a store

  Scenario: basic mobile order
    Given a User on mobile with a selected store
    When a "coffee" is ordered
    Then the selected store prints a label with the text "brew"