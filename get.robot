*** Settings ***
Library       Browser



*** Variables ***
${expected text}       ZAČÍT OBJEDNÁVKU
${selector}            xpath=/html/body/div[1]/div/main/div/div[1]/div[2]/div/div[2]/form/div/button/span[1]


*** Test Cases ***
GetAttrNameTest
   Open Maximized Browser    Chromium
   Go to Site                https://bbnew-staging.zensys.cz/shipping/courier
   Click                     text="Přijmout vše"
   Sleep                     2
   ${attr_name}              Get Attribute Names    ${selector}
   Log                       ${attr_name}

GetAttrTest
    Open Maximized Browser    Chromium
    Go to Site                https://bbnew-staging.zensys.cz/shipping/courier
    Click                     text="Přijmout vše"
    Sleep                     2
    ${attr}                   Get Attribute    ${selector}    class
    Log                       ${attr}


GetTextTest
    Open Maximized Browser    Chromium
    Go to Site                https://bbnew-staging.zensys.cz/shipping/courier
    Click                     text="Přijmout vše"
    Sleep                     2
    ${text}                   Get Text    xpath=//*[@id="__next"]/div/main/div/div[1]/div[2]/div/div[2]/form/div/button/span[1]
    Should Be Equal           ${text}     ${expected text}
    Sleep                     2

*** Keywords ***
Open Maximized Browser
    [Arguments]    ${browser}
    New Browser    browser=${browser}    headless=false   args=["--start-maximized"]
    New Context    viewport=${None}

Go to Site
    [Arguments]    ${url}
    New Page       ${url}
