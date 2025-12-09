*** Settings ***
Library     SeleniumLibrary


*** Test Cases ***
Mouse Related keyword and operations
# Right click operation using "open context menu" keyword
    open browser    https://swisnl.github.io/jQuery-contextMenu/demo.html    chrome
    Maximize browser window 
    
    open context Menu      xpath://span[@class='context-menu-one btn btn-neutral']
    sleep    2sec

# "double click" operation using "double click element" keyword

    go to   https://testautomationpractice.blogspot.com/
    Maximize browser window
    double click element     xpath://button[normalize-space()='Copy Text']
    sleep    5sec


# "drag and drop" operation using "drag and drop" keyword with source and destination locators

    drag and drop      id:draggable       id:droppable
    sleep   2sec

    close browser