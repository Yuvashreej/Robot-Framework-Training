*** Settings ***
Library     SeleniumLibrary

*** Test Cases ***
Capture Element and page Element
        Open the login page and verify the login section
        Enter username and password in the login form.
        Capture a screenshot of the login button element.
        Capture a screenshot of the entire login page.
        close browser

*** Keywords ***

Open the login page and verify the login section
        open browser       https://www.automationexercise.com/login     chrome
        Maximize browser window
        sleep    2sec
        Page should contain         Login to your account


Enter username and password in the login form.
        Input Text      xpath://input[@data-qa='login-email']     yuvashreej@hgf.com
        Input Text      xpath://input[@placeholder='Password']      1234
        sleep   2sec


Capture a screenshot of the login button element.

        capture element screenshot      xpath://button[normalize-space()='Login']       C:/Users/Yuvashree.J/Documents/Python Programming/Robot Framework Automation/Robotframework_Assignments1/login_element_screenshot.png
        sleep    3sec

Capture a screenshot of the entire login page.
        capture page screenshot     C:/Users/Yuvashree.J/Documents/Python Programming/Robot Framework Automation/Robotframework_Assignments1/login_page_screenshot.png        
        sleep    2sec
        
