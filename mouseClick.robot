*** Settings ***
Library       Browser

*** Test Cases ***
Mouse click - Nopcommerce
    Open Maximized Browser      Chromium
    Go to Site                  https://demo.nopcommerce.com/register
    Click With Options          xpath=/html/body/div[6]/div[3]/div/div/div/div[1]/h1        clickCount=2    #Double Click
    Click With Options          xpath=/html/body/div[6]/div[3]/div/div/div/div[1]/h1        button=right    #Right Click

Mouse click - CandyMapper
    Open Maximized Browser      Chromium
    Go to Site                  https://candymapper.com/
    Click                       id=popup-widget163045-close-icon
    Click With Options          xpath=//*[@id="dynamic-tagline-162997"]        clickCount=2    #Double Click
    Click With Options          xpath=//*[@id="dynamic-tagline-162997"]        button=right    #Right Click

*** Keywords ***
Open Maximized Browser
    [Arguments]    ${browser}
    New Browser    browser=${browser}    headless=false   args=["--start-maximized"]
    New Context    viewport=${None}

Go to Site
    [Arguments]    ${url}
    New Page       ${url}
