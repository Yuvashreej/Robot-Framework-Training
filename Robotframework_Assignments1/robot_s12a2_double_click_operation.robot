*** Settings ***
Library     SeleniumLibrary

*** Test Cases ***
Verify Double-Click on 'Copy Text' Copies Text
    open browser    https://testautomationpractice.blogspot.com/    chrome
    Maximize browser window

    double click element     xpath://button[normalize-space()='Copy Text']
    sleep    5sec


