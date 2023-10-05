*** Settings ***
Library  SeleniumLibrary

*** Variables ***

*** Test Cases ***
Alerts
    Open Browser    https://testautomationpractice.blogspot.com/    chrome
    click element   //button[normalize-space()='Prompt']
    set selenium speed    2 seconds

    # Check if an alert is present
    Alert Should Be Present     Press a button!

    #Maximize window
    Maximize Browser window

    #Handle Alert
    Handle alert    accept
