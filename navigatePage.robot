*** Settings ***
Library     Browser

*** Test Cases ***
Navigation test
#Go to register page
    Open Browser to Demo Page
    Click    css=.account-login-form_registerLink__dhrHT
    Sleep    2

#Go back to main page
    Go Back
    Sleep    2

#Go forward to register page
    Go Forward
    Sleep    2

*** Keywords ***
Open Browser to Demo Page
    New Browser          chromium        headless=false
    New Page             https://bbdomu.cz/account/login
    Set Strict Mode      off
    Click                text="Odmítnout vše"
