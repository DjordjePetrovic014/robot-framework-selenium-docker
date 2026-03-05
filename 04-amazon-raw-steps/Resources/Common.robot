*** Settings ***
Library    SeleniumLibrary

*** Keywords ***
Begin Web Test
    Open Browser                            about:blank      chrome
    Maximize Browser Window
    Set Selenium Speed                      1s

End Web Test
    Close Browser