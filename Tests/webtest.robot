*** Settings ***
Documentation  Some basic information about the whole test suite
Library  SeleniumLibrary

*** Keywords ***
Begin Web Test

Go To Web Page

Search For Product

End Web Test


*** Test Cases ***
User Can Access Website
    [Documentation]  This is some basic information about the test
    [Tags]  Test 1
    # Begin Web Test
    Open Browser  about:blank  chrome
    # Go To Web Page
    Go To  http://www.mediamarkt.se
    Wait Until Page Contains  Om MediaMarkt
    # Search For Product
    Input Text  //*[@id="search-autocomplete"]/form/input[1]  Game & Watch: The Legend of Zelda
    Press Keys  //*[@id="search-autocomplete"]/form/input[1]  RETURN
    Wait Until Page Contains  Game & Watch: The Legend of Zelda
    # End Web Test
    Close Browser
