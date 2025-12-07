*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${BROWSER}          chrome
${WEBSITE_URL}      https://www.automationexercise.com/login

*** Test Cases ***
Create New Account
    Set Selenium Timeout  15s        # Sets max wait time for "wait" keywords
    Set Selenium Speed    0.5s       # Slows down each Selenium action for visibility
    Open Website
    Enter Signup Details
    Enter Account Information
    Enter Address Information
    Submit Registration

*** Keywords ***
Open Website
    Open Browser    ${WEBSITE_URL}    ${BROWSER}   # Launch browser and open URL
    Maximize Browser Window                           # Maximize for better visibility
    Sleep   1s                                        # Pause execution for stability
    Wait Until Page Contains Element    xpath://h2[normalize-space()='New User Signup!']   # Wait until page is fully loaded

Enter Signup Details
    Input Text    xpath://input[@placeholder='Name']    yuvashreejs      # Enter username
    Input Text    xpath://input[@data-qa='signup-email']    yuvaj87@gmail.com   # Enter email
    Sleep   1s                                                          # Small pause before clicking
    Click Button  xpath://button[normalize-space()='Signup']            # Click Signup button
    Wait Until Page Contains Element    xpath://b[normalize-space()='Enter Account Information']    # Wait for next page

Enter Account Information
    Select Radio Button    title    Mrs           # Select title
    Input Text    id:password     Yuva@123        # Enter password
    Select From List By Label    days      14     # Select Birth Day
    Select From List By Value    months    12     # Select Birth Month
    Select From List By Value    years     2001   # Select Birth Year
    Sleep   1s                                    # Pause before next section
    Select Checkbox    id:newsletter              # Select newsletter option

Enter Address Information
    Input Text    xpath://input[@id='first_name']     yuva                 # First name
    Input Text    xpath://input[@id='last_name']      shree                # Last name
    Input Text    xpath://input[@id='company']        abc@company.com      # Company
    Input Text    xpath://input[@id='address1']       23th/3rd cross bangalore  # Primary address
    Input Text    xpath://input[@id='address2']       abcd postoffice opposite  # Secondary address
    Sleep   1s                                                             # Pause for stability
    Select From List By Label    country    India                        # Select country
    Input Text    xpath://input[@id='state']          Andhra Pradesh       # State
    Input Text    xpath://input[@id='city']           vizag                # City
    Input Text    xpath://input[@id='zipcode']        567898              # Zipcode
    Input Text    xpath://input[@id='mobile_number']  +919876543210       # Mobile number

Submit Registration
    Click Element    xpath://button[normalize-space()='Create Account']   # Submit the form
    Sleep   2s                                                            # Wait for account creation
    Wait Until Page Contains Element    xpath://b[normalize-space()='Account Created!']   # Verify account creation
    Click Element    xpath://a[normalize-space()='Continue']              # Continue after registration
