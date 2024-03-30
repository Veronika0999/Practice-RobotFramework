*** Settings ***
Library             Browser

*** Test Cases ***
CheckboxCheckTest
    Start TestCase
    Click on checkbox
    Finish TestCase

*** Keywords ***
Start TestCase
    New Browser           chromium       headless=false
    New Page              https://moje.czechitas.cz/cs/prihlasit?backlink=tp5x9&_fid=j5uu

Click on checkbox
    Set Strict Mode         off
    Click                   text="Povolit cookies"

    ${checkboxvalue}        Get Checkbox State    id=frm-slotLoader-singIn-signIn-form-remember

    IF    ${checkboxvalue}
        Log     "Unchecked"
        Check Checkbox    id=frm-slotLoader-singIn-signIn-form-remember
        Log     "Checked"
    END

    Check Checkbox         id=frm-slotLoader-singIn-signIn-form-remember
 
Finish TestCase
    Close Browser


