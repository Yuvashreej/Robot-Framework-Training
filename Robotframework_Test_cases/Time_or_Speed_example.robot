*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${BROWSER}          chrome
${WEBSITE_URL}      https://www.automationexercise.com/login

*** Test Cases ***
Create New Account
    Open Website
    Enter Signup Details
    Enter Account Information
    Enter Address Information
    Submit Registration

*** Keywords ***

# timeout are not local specific if we add different timeout for different "user keywords" them each one will overrides 
# the time/speed will apply for all the statements, like globally.

Open Website
    Open Browser    ${WEBSITE_URL}    ${BROWSER}
    Maximize Browser Window

    ${default selenium timeout for wait statments}      get selenium timeout
    log to console  ${default selenium timeout for wait statments} 

    set selenium timeout     7sec    

    ${default selenium timeout for wait statments}      get selenium timeout
    log to console  ${default selenium timeout for wait statments} 

    #selenium timeout for wait statments, usually default will be 5 seconds

    Wait Until Page Contains Element    xpath://h2[normalize-space()='New User Signup!']

Enter Signup Details
    Input Text    xpath://input[@placeholder='Name']    yuvashreej123

    sleep   2seconds

    Input Text    xpath://input[@data-qa='signup-email']    yuvaj23@gmail.com
    Click Button  xpath://button[normalize-space()='Signup']
    Wait Until Page Contains Element    xpath://b[normalize-space()='Enter Account Information']

Enter Account Information

    ${default selenium speed}     get selenium speed
    log to console      ${default selenium speed} 

    set selenium speed   1seconds

    Select Radio Button    title    Mrs
    Input Text    id:password     Yuva@123
    Select From List By Label    days      14
    Select From List By Value    months    12
    Select From List By Value    years     2001
    Select Checkbox    id:newsletter

Enter Address Information

    # applying selenium implict wait 
    ${deafult selenium implicit wait}       get selenium implicit wait
    log to console       ${deafult selenium implicit wait} 

    set selenium implicit wait      10sec

    ${deafult selenium implicit wait}       get selenium implicit wait
    log to console       ${deafult selenium implicit wait} 

    Input Text    xpath://input[@id='first_name']     yuva
    Input Text    xpath://input[@id='last_name']      shree
    Input Text    xpath://input[@id='company']        abc@company.com
    Input Text    xpath://input[@id='address1']       23th/3rd cross bangalore
    Input Text    xpath://input[@id='address2']       abcd postoffice opposite
    Select From List By Label    country    India

    Input Text    xpath://input[@id='state']          Andhra Pradesh
    Input Text    xpath://input[@id='city']           vizag

    #Here the locator is "xpath://input[@id='zipcode']wrregsd" implicit wait is 10sec

    Input Text    xpath://input[@id='zipcode']wrregsd        567898

    Input Text    xpath://input[@id='mobile_number']  +919876543210

Submit Registration
    Click Element    xpath://button[normalize-space()='Create Account']
    Wait Until Page Contains Element    xpath://b[normalize-space()='Account Created!']
    Click Element    xpath://a[normalize-space()='Continue']
