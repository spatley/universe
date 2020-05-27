Feature:
  As a customer
  I need to place an order from my phone
  so that I can pick it up in a store
  
  Background: 
    Given a mobile device
    And the app is installed
    And a store is pre selected

  Scenario: mobile order is placed
    When an order is placed for "Large Brewed Coffee"
    Then the order is sent to the selected store
    And the order is prepared
    
  Scenario: mobile order with food and drink
    When an order is placed for <item>
    Then the order is sent to the selected store
    And the order is prepared
        |item            |
        | "large coffee" |
        | "medium coffee"|
        | "small coffee" |
        | "jumbo coffee" |

Scenario: order food
  When and order is placed
  Then an order is placed for <item>
    
