*** Settings ***
Library  SeleniumLibrary

*** Variables ***


*** Test Cases ***
TabbedWindow
    Open Browser    https://testautomationpractice.blogspot.com/    chrome
    click button    //button[normalize-space()='New Browser Window']
    Maximize Browser Window
    set selenium speed      2 seconds

    ${getwindowtitle}   Get Window Titles
    log to console  ${getwindowtitle}

    Switch Window   title=Automation Testing Practice

     ${getwindowtitle}   Get Window Titles
    log to console  ${getwindowtitle}

    input text   xpath://input[@id='name']      Karthik

    #Close window
    Close Window