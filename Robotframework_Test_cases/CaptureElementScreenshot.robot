*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
Capture element and page screenshots
        open Browser     https://opensource-demo.orangehrmlive.com/web/index.php/auth/login     chrome
        maximize browser Window
        sleep   2sec
        Title should be    OrangeHRM
        sleep   2sec
        Input text         xpath://input[@placeholder='Username']        Admin
        Input text         xpath://input[@placeholder='Password']         admin123 

        capture element screenshot      xpath://img[@alt='company-branding']       Logo_element_Screenshot.png
        capture page screenshot    Page_Screenshot.png
