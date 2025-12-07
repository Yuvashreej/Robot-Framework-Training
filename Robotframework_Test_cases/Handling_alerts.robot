*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
Handling alert and clicking ok 
    open browser    https://testautomationpractice.blogspot.com/      chrome
    maximize browser window 
    click element    xpath://button[@id='confirmBtn']  

    sleep   5s
    Handle alert    accept    # clicking "ok" on alert


Handling alert and clicking cancel
    open browser    https://testautomationpractice.blogspot.com/      chrome
    maximize browser window 
    click element    xpath://button[@id='confirmBtn']  

     sleep   5s
    Handle alert    dismiss     # clicking "cancel" on alert

   
Handling alert and leave the alert 
    open browser    https://testautomationpractice.blogspot.com/      chrome
    maximize browser window 
    click element    xpath://button[@id='confirmBtn']  

    sleep   5s
    Handle alert    leave       # leave the alert on the screen


Handling alert and print the alert text
    Open Browser    https://testautomationpractice.blogspot.com/    chrome
    Maximize Browser Window
    Click Element    xpath://button[@id='confirmBtn']
    Sleep    2s

    Alert Should Be Present    Press a button!    LEAVE    timeout=10s

    ${alert_data}=    Handle Alert     # Handle alert will get the text from alert
    Log To Console    Alert text: ${alert_data}
    Log To Console    Thank you!!

    Close All Browsers  
    # Close all browsers at the end of the test no matter what the browser opened in different test cases








