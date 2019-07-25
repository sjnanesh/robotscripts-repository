*** Settings ***
Documentation  "Test browsers"
Library  SeleniumLibrary
Resource  Resources/openingBrowser.robot
Resource  Resources/closingBrowser.robot

*** Variables ***
${BROWSER} =  ff
${LINK} =   https://www.amazon.in/

*** Test Cases ***
Test browser open close
    [Documentation]  "This is a test for opening and closing an amazon file"
    [Tags]  tag1
    Open Browser with Amazon Link  ${BROWSER}  ${LINK}
    Wait Until Page Contains  Your Amazon.in
    Sleep  3s
    Close Browser with Amazon Link

Test case to search product in amazon
    [Documentation]  Test case to search a product in amazon
    [Tags]  tag2
    Open Browser with Amazon Link   ${BROWSER}
    Input Text  id=twotabsearchtextbox  Ferrari 458
    Click Button  xpath=//*[@id="nav-search"]/form/div[2]/div/input
    Wait Until Page Contains  results for "Ferrari 458"
    Close Browser with Amazon Link

Test case to add product to cart in amazon
    [Documentation]  Test case to add product to cart in amazon
    [Tags]  tag3
    Open Browser with Amazon Link   ${BROWSER}
    Input Text  id=twotabsearchtextbox  Ferrari 458
    Click Button  xpath=//*[@id="nav-search"]/form/div[2]/div/input
    Wait Until Page Contains  results for "Ferrari 458"
    Click Image  xpath=//*[@id="search"]/div[1]/div[2]/div/span[3]/div[1]/div[1]/div/div/div/div/div/div[2]/div[1]/div/div/span/a/div/img
    Wait Until Page Contains  Your Amazon.in
    Select Window  New
    Click Button  xpath=//*[@id="add-to-cart-button"]
    Wait Until Page Contains  Added to Cart
    Close All Browsers

Test case to add product to cart in amazon
    [Documentation]  Test case to add product to cart in amazon and check for login
    [Tags]  tag4
    Open Browser with Amazon Link   ${BROWSER}
    Input Text  id=twotabsearchtextbox  Ferrari 458
    Click Button  xpath=//*[@id="nav-search"]/form/div[2]/div/input
    Wait Until Page Contains  results for "Ferrari 458"
    Click Image  xpath=//*[@id="search"]/div[1]/div[2]/div/span[3]/div[1]/div[1]/div/div/div/div/div/div[2]/div[1]/div/div/span/a/div/img
    Wait Until Page Contains  Your Amazon.in
    Select Window  New
    Click Button  xpath=//*[@id="add-to-cart-button"]
    Wait Until Page Contains  Added to Cart
    Click element  xpath=//*[@id="hlb-ptc-btn-native"]
    Wait Until Page Contains  Login
    Close All Browsers

