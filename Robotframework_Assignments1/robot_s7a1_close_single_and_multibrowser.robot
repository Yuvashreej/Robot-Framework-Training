*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${BROWSER}          chrome
${WEBSITE_URL}      https://www.automationexercise.com/login

*** Test Cases ***
Open Link in Multiple Browsers and Close All
    open browser        ${WEBSITE_URL}     ${BROWSER}  
    open browser        ${WEBSITE_URL}     ${BROWSER}  
    open browser        ${WEBSITE_URL}      firefox
    open browser        ${WEBSITE_URL}      edge
    maximize browser window 

    sleep    2s
    close all browser
