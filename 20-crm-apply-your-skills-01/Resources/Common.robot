*** Settings ***
Library             SeleniumLibrary



*** Variables ***



*** Keywords ***
Begin Web Test
    #Set selenium speed                  .2s
    Set selenium timeout                 10s
    open browser                        about:blank       ${BROWSER}

    # Resize browser window
    set window position                 x=0    y=0
    set window size                     width=1920  height=768


End Web Test
    close all browsers