*** Settings ***
Documentation  Some basic information about the whole test suite
Resource  ../Resources/keywords.robot
#Library  ../Scripts/remove.parenthesis.py
Library  SeleniumLibrary
Suite Setup  Begin Web Test
Suite Teardown  End Web Test

*** Variables ***
${BROWSER}  chrome
${URL}  http://www.mediamarkt.se
${SEARCH_TERM}  Game & Watch: The Legend of Zelda

*** Test Cases ***
User Can Access Website And Search For Product
    [Documentation]  This is some basic information about the test
    [Tags]  Test 1
    GO TO WEB PAGE

User Can Search For A Product
    [Documentation]  This is some basic information about the second test
    [Tags]  Test 2
    GO TO WEB PAGE
    Search For Product  Game & Watch

User Can Search For Another Product
    [Documentation]  This is some basic information about the third test
    [Tags]  Test 3
    GO TO WEB PAGE
    Search For Product  NINTENDO Switch


