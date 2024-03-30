*** Settings ***
Library             Browser


*** Test Cases ***
Practice scrolling
    Start TestCase
    Finish TestCase

*** Keywords ***
Start TestCase
    New Browser           chromium       headless=false
    New Page              https://www.ebay.com
    Scroll By             ${None}       600         0          smooth
    Sleep                 2
    Scroll By             ${None}       -600        0          smooth
    Sleep                 2
    Scroll To             ${None}       bottom      left       auto
    Sleep                 2

Finish TestCase
    Close Browser
