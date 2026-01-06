*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${URL}        file:///D:/3_2/TestAutomationLab_663380603-3/Registration.html
${BROWSER}    chrome

*** Test Cases ***
UAT-Lab04-002 Empty Phone
    Open Browser    ${URL}    ${BROWSER}
    Maximize Browser Window

    Input Text    id=firstname    Somyod
    Input Text    id=lastname     Sodsai
    Input Text    id=organization CS KKU
    Input Text    id=email        somyod@kkumail.com

    Click Button    id=registerButton

    Page Should Contain    Please enter your phone number!!

    Sleep    3s
    Close Browser
