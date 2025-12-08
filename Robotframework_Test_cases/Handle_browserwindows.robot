*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
Handling Browser window
    open browser        https://demo.automationtesting.in/Windows.html      chrome
    Maximize browser window

    click element       xpath://a[normalize-space()='Open New Seperate Windows']

    page should contain      click the button to open a new window with some specifications

    click element        xpath://button[@class='btn btn-primary']
    sleep   5s

    switch window       url=https://www.selenium.dev/      
    # important*:- "switch window" can be used for both handling tabbedwindows and browserwindows.
    # "Select window" is no longer used by selenium updated version.

    page should contain         Selenium automates browsers. That's it!
    sleep   2s
    ${title}=        get title  # title of second window

    log to console      Title of second browser window is: ${title}
    log to console      Testcase execution done 


