*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${browser}  chrome
${website link}  https://www.automationexercise.com/login

*** Test Cases ***
New User Signup
    Open Browser    ${website link}  ${browser}
    Maximize browser window
    wait until page contains element  xpath://h2[normalize-space()='New User Signup!']  20s 
    Input text      xpath=//input[@placeholder='Name']    Yuvashree J
    Input text      xpath=//input[@data-qa='signup-email']  yuvashreej@gmail.com
    Click button   xpath=//button[normalize-space()='Signup']
    wait until page contains element  xpath://b[normalize-space()='Enter Account Information']  10s
    Close Browser

*** Keywords ***