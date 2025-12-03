*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${browser}  chrome
${website link}  https://demo.nopcommerce.com/

*** Test Cases ***

LoginTestcases
    open browser    ${website link}  ${browser}
    Login To Application
    close browser

*** Keywords ***
Login To Application
    click link      xpath=//a[normalize-space()='Log in'] 
    Wait Until Element Is Visible    id=Email    30s
    input text      id=Email       yuvashreej@gmail.com
    input text      id=Password    Yuva@123
    click element   xpath=//button[normalize-space()='Log in'] 
