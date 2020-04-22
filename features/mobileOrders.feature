Feature:
  As a customer
  I need to place an order from my phone
  so that I can pick it up in a store
  
  Background: 
    Given a mobile device
    And the app is installed
    And a store is pre selected

  Scenario: mobile order is placed
    When an order is placed for "Large" "Brewed Coffee"
    Then the order is sent to the selected store
    And the order is prepared
    
  Scenario: mobile order with food and drink
    When an order is placed for <items>
    Then the order is sent to the selected store
    And the order is prepared
    
    
