*** Settings ***
Library  SeleniumLibrary

*** Keywords ***
Open Browser with Amazon Link
    [Arguments]  ${browser}   ${link}
    Open Browser   ${link}   ${browser}
    Wait Until Page Contains  Your Amazon.in

