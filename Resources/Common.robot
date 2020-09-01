*** Settings ***
Library    SeleniumLibrary

*** Keywords ***
Begin web test
    open browser    about:blank     ${BROWSER}


End web test
    close browser


Insert Testing Data
    log    I am setting up the test data...


Cleanup Testing Data
    log    I am clea ning up the test data