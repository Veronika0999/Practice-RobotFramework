*** Settings ***
Library     Browser

*** Test Cases ***
One link test
    Open Browser to Demo Page
    ${element}          Get Element       li > .ico-login
    Log                 ${element}
    ${link}             Get Property      ${element}    href
    &{res}              Http              ${link}
    Should Be Equal     ${res.status}     ${200}

Multiple links
    Open Browser to Demo Page
    @{elements}          Get Elements    css=a
    FOR    ${element}    IN    @{elements}
           ${link}       Get Property    ${element}    href
           &{res}              Http              ${link}
           Should Be Equal     ${res.status}     ${200}
    END

*** Keywords ***
Open Browser to Demo Page
    New Browser             chromium        headless=false
    New Page             https://demo.nopcommerce.com/
    Sleep                      2
