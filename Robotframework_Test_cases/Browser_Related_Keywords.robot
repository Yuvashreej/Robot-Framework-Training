*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
Navigational brower related keywords
    open browser     https://www.myntra.com/   chrome
    maximize browser window
    sleep   2sec

    ${location}     get location            
    # "get location" is one of the browser related keyword to capture the location/link of the browser
    log to console      ${location} 

    sleep   2sec

    go to    https://robotframework.org/
    # "go to "  is one of the browser keyword where it will go to new link on the same browser(google)
    ${location}     get location            
    log to console      ${location} 

    sleep    2sec

    go back
    ${location}     get location            
    log to console      ${location} 

    close browser

