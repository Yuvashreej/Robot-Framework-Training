*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
Open homepage, get current location, go to product page, and go back
    Open Browser    https://www.automationexercise.com/    chrome
    Maximize Browser Window

    # Get and print the current URL (homepage)
    ${homepage_url}=    Get Location
    Log To Console      Current URL: ${homepage_url}

    # Go to the Products page
    Go To    https://www.automationexercise.com/products

    # Wait for products page to load
    Wait Until Page Contains    All Products

    ${productpage_url}=    Get Location
    Log To Console      Current URL: ${productpage_url}

    # Go back to homepage
    Go Back

    # Verify homepage loaded
    Wait Until Page Contains    Full-Fledged practice website for Automation Engineers
    ${homepage_url}=    Get Location
    Log To Console      Current URL: ${homepage_url}

    Close Browser
