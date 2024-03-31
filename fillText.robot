*** Settings ***
Library       Browser

*** Test Cases ***
Fill text
    Open Maximized Browser      Chromium
    Go to Site                  https://demo.nopcommerce.com/
    Fill Text                   id=small-searchterms    computer
    Clear Text                  id=small-searchterms

*** Keywords ***
Open Maximized Browser
    [Arguments]    ${browser}
    New Browser    browser=${browser}    headless=false   args=["--start-maximized"]
    New Context    viewport=${None}

Go to Site
    [Arguments]    ${url}
    New Page       ${url}
