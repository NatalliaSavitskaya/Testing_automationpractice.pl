Feature: Making an order by unregistered user

@order
    Scenario: Unregistered user can't make an order without creating an account or signing in first
        Given I am on the home page
        And I am not logged in
        # And I have no items in my cart
        When I select Women menu item
        And I mark "In stock" filter
        And I click on any product
        And I select avaliable size and color
        And I click the Add to Card button
        And I click the Proceed to Checkout button on the pop-up window of the product page
        And A correct order information is displayed
        And I click the Proceed to Checkout button on the shopping-cart summary page
        Then I am on the authentication page


# Test Case 1
# When an unregistered user tries to proceed with checkout after ordering some item, the page
# should ask to create an account or sign in first, before letting the user finish the order.