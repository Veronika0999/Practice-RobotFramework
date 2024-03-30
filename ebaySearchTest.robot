*** Settings ***
Documentation       Basic Search Functionality
Library             Browser


*** Test Cases ***
Verify basic search functionality for eBay
    [Documentation]     This test case verifies the basic search

    Start TestCase
    Verify Search Results
    Finish TestCase

*** Keywords ***
Start TestCase
    New Browser           chromium       headless=false
    New Page              https://www.ebay.com

Verify Search Results
    Type Text             id=gh-ac       mobile
    Click                 id=gh-btn
    Get Title             *=      mobile
    Take Screenshot

Finish TestCase
    Close Browser
