*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${browser}  chrome
${website link}  https://demo.nopcommerce.com/

*** Test Cases ***
Verifying Input TextBox
    open browser  ${website link}  ${browser}
    Maximize browser window
    Title should be  nopCommerce demo store. Home page title  
    click link   xpath://a[@class='ico-login']
    wait until page contains element   id:Email
    ${email_txt}  Set Variable   id:Email

    Element should be visible   ${email_txt}
    Element should be enabled   ${email_txt}
    Element should not be disabled   ${email_txt}
    Input text   ${email_txt}   Yuvashree
    sleep  5

    clear Element Text   ${email_txt}
    sleep  10
    close browser 










