*** Settings ***
Library  SeleniumLibrary

*** Variables ***

${browser}      chrome
${url}      https://demowebshop.tricentis.com/

*** Test Cases ***
Register new user using selenium speed
    open browser    ${url}      ${browser}
    Maximize browser window

    ${default speed}        get selenium speed          #default selenium speed is 0
    log to console      ${default speed}                #printin to console

    set selenium speed      2seconds                    #setting selenium speed to 2 seconds

    click link      xpath://a[@class='ico-register']

    select radio button       Gender      F
    Input text      name:FirstName      Yuvashree
    Input text      name:LastName       J
    Input text      name:Email          yuva@gmail.com

    Input text      name:Password       yuva@345
    Input text      name:ConfirmPassword        yuva@345

    ${default speed}        get selenium speed
    log to console      ${default speed}

*** Keywords ***


