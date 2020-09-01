*** Settings ***
Library    SeleniumLibrary



*** Variables ***


*** Test Cases ***
Should be able to search for products
    open browser    https://www.amazon.com/     chrome
    sleep    3s
    input text    id=twotabsearchtextbox  Ferrari 458
    sleep    3s
    click button    css=#nav-search > form > div.nav-right > div > input
    close browser


*** Keywords ***
