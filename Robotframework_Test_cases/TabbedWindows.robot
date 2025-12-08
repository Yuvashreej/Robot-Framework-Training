*** Settings ***
Library    SeleniumLibrary

*** Test Cases ***
Handling Tabbed Windows
    open browser     https://demo.automationtesting.in/Windows.html      chrome

    click element       xpath://a[@href='http://www.selenium.dev']//button[@class='btn btn-info'][normalize-space()='click']   
    # above statement will open a new window/tab 

    sleep   3s
    
    # we need to switch the tab/window by specifiying the title or name of the browser.
    Switch Window       title:Selenium     #Verifying the switched nrowser by title name , url or index 2

    click element       xpath://span[normalize-space()='Support']   #click on support 

    sleep   3s
    page should contain    Getting Help     #Verifying the support page/screen

    sleep   2s
    close all browsers


