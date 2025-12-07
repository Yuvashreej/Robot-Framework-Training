*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${browser}  chrome
${website link}  https://www.automationexercise.com/login

*** Test Cases ***
Create new account
    open browser    ${website link}     ${browser}
    Maximize browser window
    wait until page contains element    xpath://h2[normalize-space()='New User Signup!']
    # set selenium speed  1s

    Input text      xpath://input[@placeholder='Name']    yuvashreej
    Input text      xpath://input[@data-qa='signup-email']    yuvaj@gmail.com
    click button      xpath://button[normalize-space()='Signup']

    wait until page contains element    xpath://b[normalize-space()='Enter Account Information']
    
    select radio button     title      Mrs
    Input text      id:password     Yuva@123

    select from list by label   days    14
    select from list by value   months     12      
    select from list by value   years    2001
    # select from list by index

    select checkbox    id:newsletter

    input text  xpath://input[@id='first_name']   yuva
    input text  xpath://input[@id='last_name']    shree
    input text  xpath://input[@id='company']      abc@company.com
    input text  xpath://input[@id='address1']     23th/3rd cross bangalore
    input text  xpath://input[@id='address2']     abcd postoffice opposite

    select from list by label    country    India
    input text      xpath://input[@id='state']   Andhra Pradesh
    input text      xpath://input[@id='city']     vizag
    input text      xpath://input[@id='zipcode']     567898
    input text      xpath://input[@id='mobile_number']     +919876543210

    click element    xpath://button[normalize-space()='Create Account']


    wait until page contains element    xpath://b[normalize-space()='Account Created!'] 
    click element    xpath://a[normalize-space()='Continue']
    

*** Keywords ***



