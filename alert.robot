*** Settings ***
Library             Browser

*** Test Cases ***
Alert test
#click on the element that opens the Alert
    Open Maximized Browser     Chromium
    Go to Site                 https://demoqa.com/alerts
    Promise To            Wait For Alert    action=accept
    Sleep                 2
    Click                 id=alertButton
    Sleep                 2
    
#click on the element and insert input
    Handle Future Dialogs    action=accept     prompt_input="hello"
    Click         id=promtButton
    Take Screenshot

*** Keywords ***
Open Maximized Browser
    [Arguments]    ${browser}
    New Browser    browser=${browser}    headless=false   args=["--start-maximized"]
    New Context    viewport=${None}

Go to Site
    [Arguments]    ${url}
    New Page       ${url}
