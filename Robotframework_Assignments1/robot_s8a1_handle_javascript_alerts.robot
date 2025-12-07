*** Settings ***
Library  SeleniumLibrary

*** Test Cases ***

Scenario 1: Alert with ok
    open browser    https://demo.automationtesting.in/Alerts.html    chrome
    maximize browser window
    click link     xpath://a[normalize-space()='Alert with OK']
    click button       xpath://button[@class='btn btn-danger']

    sleep   10s

    ${alert_message}    handle alert        accept         #click "ok"
    log to Console      alert message: ${alert_message}

    alert should not be Present     # verify alert is closed
    log to Console      Thank you! alert is closed.


Scenario 2: Alert with ok and cancel
    open browser    https://demo.automationtesting.in/Alerts.html    chrome
    maximize browser window
    click link     xpath://a[normalize-space()='Alert with OK & Cancel']
    click button       xpath://button[@class='btn btn-primary']
    sleep   10s
    ${alert_message}    handle alert        dismiss        #click "cancel"
    log to Console      alert message: ${alert_message}

    page should contain   You Pressed Cancel        #verify the cancel action on page
 
    alert should not be Present     # verify alert is closed
    
    log to Console      Thank you! alert is closed.


Scenario 3: Alert with text box
    open browser    https://demo.automationtesting.in/Alerts.html    chrome
    maximize browser window
    click link     xpath://a[normalize-space()='Alert with Textbox']
    click button       xpath://button[@class='btn btn-info']
   
    sleep    3s
    Input Text Into Alert    RobotFramework    ACCEPT   # enter text into alert text box
    
    page should contain   Hello RobotFramework How are you today        #verify the input action on page
    alert should not be Present     # verify alert is closed
    
    log to Console      Thank you! alert is closed.
    close all browsers



