*** Settings ***
Documentation  This is about setting section on test suites
Library  SeleniumLibrary

*** Variables ***

#robot -d Results --critical tag1 tester/first.robot

*** Test Cases ***

Validate Understadnging of First Test
    [Documentation]   This is my first test case
    [Tags]  tag1
    Log   "Hello World!"
Validate Understadnging of Second Test
    [Documentation]   This is my first test case
    [Tags]  tag2
    Log   "Executing second test case"