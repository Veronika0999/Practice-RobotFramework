*** Settings ***
Library     Browser

*** Variables ***
${expected_text}            25

*** Test Cases ***
The Input Form
    New Browser             chromium        headless=false
    New Page                https://testpages.eviltester.com/styled/calculator
    Type Text               id=number1      5
    Type Text               id=number2      5
    Select Options By       id=function     index           1
    Click                   id=calculate
    ${text}                 Get Text        id=answer
    Should Be Equal         ${text}         ${expected_text}
