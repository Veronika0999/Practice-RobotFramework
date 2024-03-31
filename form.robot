*** Settings ***
Library     Browser

*** Test Cases ***
The Input Form
    New Browser             chromium     headless=false
    New Page                https://testpages.eviltester.com/styled/validation/input-validation.html
    Type Text               id=firstname        John
    Type Text               id=surname          Doe
    Type Text               id=age              20
    Select Options By       id=country          index     100
    Fill Text               id=notes            Hi, my name is John.
