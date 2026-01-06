*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${URL}        file:///D:/3_2/TestAutomationLab_663380603-3/Registration.html
${BROWSER}    chrome

*** Test Cases ***
UAT-Lab04-001 Register Success
    Open Browser    ${URL}    ${BROWSER}
    Maximize Browser Window

    Input Text    id=firstname      Somyod
    Input Text    id=lastname       Sodsai
    Input Text    id=organization   CS KKU
    Input Text    id=email          somyod@kkumail.com
    Input Text    id=phone          091-001-1234

    Click Button    id=registerButton

    Title Should Be    Success
    Page Should Contain    Thank you for registering with us.
    Page Should Contain    We will send a confirmation to your email soon.

    Sleep    3s
    Close Browser
