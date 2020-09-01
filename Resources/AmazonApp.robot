*** Settings ***
Library    SeleniumLibrary
Resource    ../Resources/PO/LandingPage.robot
Library    SeleniumLibrary
Resource    ../Resources/PO/LandingPage.robot

*** Keywords ***
Search for products
    LandingPage.Load
    LandingPage.Verify Page Loaded

    input text    id=twotabsearchtextbox    ${SEARCH_TERM}
    click button    xpath=//div[contains(@class,'nav-search-submit nav-sprite')]//input[@type='submit']
    wait until page contains    Deliver to


Select product from search results
    click element    xpath=//span[contains(text(),'Ferrari 458 Italia Red 1')]
    wait until page contains    Back to results



Add product to cart
    click button    id=add-to-cart-button
    wait until page contains    Added to Cart


Begin checkout
    click link     Proceed to checkout (1 item)
    wait until page contains    Continue
    page should contain button    id=continue
    sleep    3s

