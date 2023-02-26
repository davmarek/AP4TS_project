*** Settings ***
Documentation       Simple example using SeleniumLibrary.

Library             SeleniumLibrary
Resource            Resources/PageObjects.resource


*** Variables ***
${LOGIN URL}    http://hbcmalenovice.cz
${BROWSER}      Chrome


*** Test Cases ***
Just Testing
    Log To Console    ${PO_Header_HBC}
    Open Browser To Home Page


*** Keywords ***
Open Browser To Home Page
    Set Selenium Speed    0.2
    Open Browser    ${LOGIN URL}    ${BROWSER}
    Sleep    10s
