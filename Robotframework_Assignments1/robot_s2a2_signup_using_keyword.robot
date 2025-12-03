*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${browser}  chrome
${website link}  https://www.automationexercise.com/login   
${name}  Yuvashree J
${email}  yuvashreej@gmail.com
${wait time}  20s

*** Test Cases ***
New user Signup using Keywords
    Open the browser
    Enter valid name and email
    click on login button
    Verify user is navigated to enter account information page
    Close Browser

*** Keywords ***
open the browser
    Open Browser    ${website link}  ${browser}
    Maximize browser window
    wait until page contains element  xpath://h2[normalize-space()='New User Signup!']  ${wait time}

Enter valid name and email
    Input text      xpath=//input[@placeholder='Name']    ${name}
    Input text      xpath=//input[@data-qa='signup-email']  ${email}

click on login button
    Click button   xpath=//button[normalize-space()='Signup']

Verify user is navigated to enter account information page
    wait until page contains element  xpath://b[normalize-space()='Enter Account Information']  ${wait time}