*** Settings ***
Documentation    This is some basic infor about the whole suit
Resource    ../Resources/AmazonApp.robot
Resource    /Users/tanimkamal/Documents/robot-scripts/amazon/Resources/Common.robot
Suite Setup    Insert Testing Data
Test Setup    Begin web test
Test Teardown    End web test
Suite Teardown    Cleanup Testing Data
*** Variables ***
${BROWSER} =  firefox
${START_URL} =  http://www.amazon.com
${SEARCH_TERM} =  Ferrari 458



*** Test Cases ***
User can search for products
    [Documentation]    This is some basic info about the test
    [Tags]    Smoke
    AmazonApp.Search for products


User must sign in to checkout
    [Documentation]    This is some basic info about the test
    [Tags]    Smoke
    AmazonApp.Search for products
    AmazonApp.Select product from search results
    AmazonApp.Add product to cart
    AmazonApp.Begin checkout







