*** Settings ***
Documentation  These are some API tests
Resource  ../Resources/API/Github.robot

# Run:
# robot -d 40-explore-libraries\Results .\40-explore-libraries\Tests\API_Tests.robot

*** Variables ***


*** Test Cases ***
Make a simple REST API call
    [Tags]  API
    Check Github Username

Display emoji from Github
    [Tags]  API
    Display Emoji