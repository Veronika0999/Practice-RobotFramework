*** Settings ***
Library       Browser

*** Test Cases ***
Fill text
    Open Maximized Browser      Chromium
    Go to Site                  https://testpages.eviltester.com/styled/cookies/adminlogin.html
    Type Text                   id=username             Admin
    Type Text                   id=password             AdminPass
    Check Checkbox              xpath=/html/body/div/div[3]/section/form/div/label[3]/input
    Click                       id=login


*** Keywords ***
Open Maximized Browser
    [Arguments]    ${browser}
    New Browser    browser=${browser}    headless=false   args=["--start-maximized"]
    New Context    viewport=${None}

Go to Site
    [Arguments]    ${url}
    New Page       ${url}
