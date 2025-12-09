*** Settings ***
Library     SeleniumLibrary

*** Test Cases ***
Verify Right-Click Triggers Context Menu
    open browser      https://practice.expandtesting.com/context-menu      chrome
    Maximize browser window

    open context menu    xpath://div[@id='hot-spot']     

    # Alert Should Be Present    timeout=5s

    # Sleep    3s
    # ${alert_message}=     get alert message
    # log to console    Alert/popup Message: ${alert_message}   
    sleep    2s

    Close Browser



