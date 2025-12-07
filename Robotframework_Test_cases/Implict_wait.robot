*** Settings ***
Library  SeleniumLibrary

*** Variables ***

${browser}      chrome
${url}      https://demowebshop.tricentis.com/

*** Test Cases ***
Register new user using selenium implicit wait
    open browser    ${url}      ${browser}
    Maximize browser window
    
    ${implict_wait}     get selenium implicit wait 
    log to console      ${implict_wait} 

    set selenium implicit wait     3seconds

    ${implict_wait}     get selenium implicit wait 
    log to console      ${implict_wait} 


    click link      xpath://a[@class='ico-register']

    select radio button       Gender      F
    Input text      name:FirstName      Yuvashree
    Input text      name:LastName       J
    Input text      name:Email          yuva@gmail.com

    Input text      name:Password1       yuva@345      

    # here the loctors is just "password" (Not: name:Password1 ) so implicit selenium will wait till 3 sec for this line to execute

    Input text      name:ConfirmPassword        yuva@345


*** Keywords ***


