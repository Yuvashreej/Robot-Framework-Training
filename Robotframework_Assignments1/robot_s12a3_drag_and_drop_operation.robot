*** Settings ***
Library     SeleniumLibrary

*** Test Cases ***
Verify Element Can Be Dragged and Dropped Successfully
        open browser     https://testautomationpractice.blogspot.com/   chrome
        Maximize browser window

        drag and drop      id:draggable       id:droppable
        sleep    2sec

        close browser

