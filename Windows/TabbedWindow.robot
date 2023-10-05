*** Settings ***
Library  SeleniumLibrary

*** Variables ***


*** Test Cases ***
TabbedWindow
    Open Browser    https://testautomationpractice.blogspot.com/    chrome
    click button    //button[normalize-space()='New Browser Window']
    Maximize Browser Window
    set selenium speed      3 seconds

    ${getwindowtitle}   Get Window Title
    log to console  ${getwindowtitle}

    Switch Window   title=Your Store

     ${getwindowtitle}   Get Window Title
    log to console  ${getwindowtitle}

    click link  //a[normalize-space()='Desktops']