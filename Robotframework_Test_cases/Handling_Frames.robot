*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
Testing Frames Example for reference only but the code doesnt work
    Open Browser    https://www.selenium.dev/selenium/docs/api/java/index.html    chrome
    Maximize Browser Window

    # --- Frame 1: Click "org.openqa.selenium.chrome" 
    Select Frame    packageListFrame
    Click Link      org.openqa.selenium.chrome
    Unselect Frame

    # --- Frame 2: Click "ChromeDriver" ---
    Select Frame    packageFrame     
    Click Link      ChromeDriver
    Unselect Frame

    # --- Frame 3: Validate content ---
    Select Frame    classFrame
    Page Should Contain    Class ChromeDriver
    Unselect Frame

    Close Browser
