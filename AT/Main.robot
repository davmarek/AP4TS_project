*** Settings ***
Library     SeleniumLibrary
Resource    Resources/PageObjects.resource


*** Variables ***
${LOGIN URL}    https://hbcmalenovice.cz/
${BROWSER}      Chrome


*** Test Cases ***
Just Testing
    [Setup]    Open Browser    ${LOGIN URL}    ${BROWSER}

    Wait Until Element Is Visible    ${PO_Header_HBC}

    Wait Until Element Is Visible    ${PO_Hero_Atym}
    Click Element    ${PO_Hero_Atym}

    Wait Until Element Is Visible    ${PO_Aktuality_Heading}

    [Teardown]    Run Keywords    Close Browser
