Feature:
  As a customer
  I need to place an order from my phone
  so that I can pick it up in a store

  Scenario: mobile order is placed
    Given a mobile with the app installed
    And a store selected on the app
    When an order is placed for "Large" "Brewed Coffee"
    Then the order is sent to the selected store
    And the order is prepared
