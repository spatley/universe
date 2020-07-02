Feature:
  As a customer
  I need to place an order from my phone
  so that I can pick it up in a store
  
  Scenario: basic mobile order
    Given a User on mobile with a selected store
    When a coffee is ordered
    Then the selected store prints a label
  
  Scenario Outline: mobile order pricing
    Given a User on mobile with a selected store
    When an order is placed for <item>
    Then the customer is charged <price>
    And the order is sent to the store
        |item            |  price |
        | "large coffee" |  5.00  |
        | "medium coffee"|  4.00  |
        | "small coffee" |  3.00  |

  
  Scenario Outline: points are inctremented
    Given a User on mobile with a selected store
    When an order is placed for <price>
    Then the user's stars are incremented by <starcount>
    
    | price | starcount |
    | 5.00  | 2         |
    | 4.00  | 2         |
    | 3.00  | 1         |
    | 2.00  | 1         |

  Scenario: Starbucks Value Card is decremented
    Given a User on mobile
    And a selected store
    And a SVC with a balance of 50.00
    When an order is placed for 5.00
    Then the SVC balance will be 45.00
    

    
