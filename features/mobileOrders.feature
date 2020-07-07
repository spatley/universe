Feature: order coffee from a mobile app

  As a customer
  I need to place an order from my phone
  so that I can pick it up in a store

  Scenario: Basic mobile order
    Given a User on mobile with a selected store
    When a "coffee" is ordered
    Then the selected store prints a label with the text "brew"
    
  Scenario: Order a latte
    Given a User on mobile with a selected store
    When a "latte" is ordered
    Then the selected store prints a label with the text "Cafe Latte"
  
  Scenario: Order a mocha
    Given a User on mobile with a selected store
    When a "mocha" is ordered
    Then the selected store prints a label with the text "Cafe Mocha"
  