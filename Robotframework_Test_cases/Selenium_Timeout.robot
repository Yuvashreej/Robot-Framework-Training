*** Settings ***
Library  SeleniumLibrary

*** Variables ***

${browser}      chrome
${url}      https://demowebshop.tricentis.com/

*** Test Cases ***
Register new user using selenium speed
    open browser    ${url}      ${browser}
    Maximize browser window

    ${selenium timeout}     get selenium timeout
    log to console      ${selenium timeout} 

    # set selenium timeout        10seconds

    click link      xpath://a[@class='ico-register']

    ${selenium timeout}     get selenium timeout
    log to console      ${selenium timeout} 

    #Selenium timeout will apply only for wait elements/statments.
    wait until page contains        Register    
    # if the "Register" is not found them selenium will wait for 10sec, if present them 0 default speed/seconds 

    select radio button       Gender      F
    Input text      name:FirstName      Yuvashree
    Input text      name:LastName       J
    Input text      name:Email          yuva@gmail.com

    #set timeout will wait 10sec, instead of 5 default timeout as the wait is "your passwords" is wrong.
    wait until page contains        Your Passwords    
    # if it is "Your Password" then it is 0 speed, 
    #as it as "Your Passwords" the wait statement will wait until 10 seconds as we set the time out to 10 seconds, 
    #if we don't set the timeout for "wait statments" by default it will wait for 5 seconds.
   
    Input text      name:Password       yuva@345
    Input text      name:ConfirmPassword        yuva@345

*** Keywords ***


