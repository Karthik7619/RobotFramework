*** Settings ***
Library  SeleniumLibrary

*** Variables ***

*** Test Cases ***
Alerts
    Open Browser    https://testautomationpractice.blogspot.com/    chrome
    click element   //button[normalize-space()='Alert']
    Maximize Browser window

    Handle alert    accept
