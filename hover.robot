*** Settings ***
Library     Browser

*** Test Cases ***
Hover test Alza.cz
    New Browser           chromium       headless=false
    New Page              https://www.alza.cz/
    Set Strict Mode       off
    Click                 css=.btnx
    Hover                 id=litp18890259

Hover test Notino.cz
    New Browser           chromium       headless=false
    New Page              https://www.notino.cz/
    Set Strict Mode       off
    Click                 text="Souhlasím"
    Hover                 css=.sdGGTI
