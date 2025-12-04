*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${browser}  chrome
${website link}  https://www.automationexercise.com/login

*** Test Cases ***
Verify Page Title of the website
    Open browser    ${website link}  ${browser}
    Maximize browser window
    Title should be   Automation Exercise - Signup / Login
    close browser

