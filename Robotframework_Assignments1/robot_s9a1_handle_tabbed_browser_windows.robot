*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
Handle tabbed browser Windows
    open browser     https://demo.automationtesting.in/Windows.html    chrome
    Maximize browser window 

    click element       xpath://a[normalize-space()='Open New Seperate Windows']

    click button        xpath://button[@class='btn btn-primary']

    sleep   3s
    #Switch to new window using URL

    switch window       url:https://www.selenium.dev/

    Title should be    Selenium     # Validating if the title of new window is "Selenium"

    sleep   2s

    #Switch back to main window using URL
    switch window       url:https://demo.automationtesting.in/Windows.html

    Title should be    Frames & windows     # Validating if the title of main window is "Frames & windows"


    
    

