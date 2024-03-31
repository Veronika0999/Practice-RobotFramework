*** Settings ***
Library       Browser

*** Test Cases ***
Select Options Test - herokuapp
    Open Maximized Browser    Chromium
    Go to Site                http://the-internet.herokuapp.com/dropdown
    ${all_options}            Get Select Options        id=dropdown
    Log                       ${all_options}
    ${selected_option}        Get Selected Options      id=dropdown
    Log                       ${selected_option}
    Select Options By         id=dropdown               index     2
    Deselect Options          id=dropdown

Select Options Test - nopcommerce
    Open Maximized Browser      Chromium
    Go to Site                  https://demo.nopcommerce.com/desktops
    ${all_options}=             Get Select Options      id=products-pagesize
    Log                         ${all_options}
    ${selected_option}=         Get Selected Options    id=products-pagesize
    Log                         ${selected_option}
    Select Options By           id=products-pagesize              index           2
    Sleep                       2
    Deselect Options            id=products-pagesize
    Sleep                       2


*** Keywords ***
Open Maximized Browser
    [Arguments]    ${browser}
    New Browser    browser=${browser}    headless=false   args=["--start-maximized"]
    New Context    viewport=${None}

Go to Site
    [Arguments]    ${url}
    New Page       ${url}
