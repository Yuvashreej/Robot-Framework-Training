*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${BROWSER}          chrome
${WEBSITE_URL}      https://www.automationexercise.com/login


*** Test Cases ***
Closing single browser
    open browser    ${WEBSITE_URL}      ${BROWSER} 
    maximize browser Window
    sleep    5seconds
    close browser       # closeing the latest browser


Closing multiple browsers
    open browser    https://demo.nopcommerce.com/    chrome
    maximize browser window 
    sleep   5seconds
    
    open browser    https://demowebshop.tricentis.com/register      chrome
    maximize browser window
    sleep   5seconds

    # "close browser" closing the one latest browser  https://demowebshop.tricentis.com/register
    # where as  https://demo.nopcommerce.com/  browser will not be closed 
    # To close all the opened browsers use "Close All Browsers" keyword

    close all browsers   # closing all the opened browsers


