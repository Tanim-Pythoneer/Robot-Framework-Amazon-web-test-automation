*** Settings ***
Library    SeleniumLibrary


*** Keywords ***
Load
    go to    ${START_URL}

Verify Page Loaded
    wait until page contains    Today's Deals
