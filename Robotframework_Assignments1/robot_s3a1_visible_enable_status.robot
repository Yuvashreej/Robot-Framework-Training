*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${browser}  chrome
${url}   https://www.automationexercise.com/login
${user email id}  yuvashreej@gmail.com
${user password}  yuva@123

*** Test Cases ***
Visibility and Enablement Checks
    Open the browser
    verify the login section
    validate whether the email and password input fields are visibile and enabled before typing
    enter email id and password 
    Verify whether the login button is visible and clickable
    close the browser

*** Keywords ***
Open the browser
    open browser   ${url}   ${browser}
    Maximize browser window

verify the login section
    wait until page contains element   xpath://h2[normalize-space()='Login to your account']

validate whether the email and password input fields are visibile and enabled before typing
    Set Test Variable    ${email_check}   xpath://input[@data-qa='login-email']      # Set Test Variable to store email input field locator and can use it in the whole project, it is not a local variable now 
    Set Test Variable    ${password}   xpath://input[@placeholder='Password']

    # Fail early if the UI is broken
    Element should be visible   ${email_check}
    Element should be visible   ${password} 

    Element should be enabled    ${email_check}
    Element should be enabled    ${password} 

enter email id and password 

    Input text  ${email_check}   ${user email id}
    Input text  ${password}      ${user password} 

Verify whether the login button is visible and clickable

    Element should be visible   xpath://button[normalize-space()='Login']
    Element should be enabled   xpath://button[normalize-space()='Login']
    click element    xpath://button[normalize-space()='Login']

close the browser

    close browser



