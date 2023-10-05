*** Settings ***
Library  SeleniumLibrary

*** Variables ***


*** Test Cases ***
TabbedWindow
    #Invoke Url
    Open Browser    https://testautomationpractice.blogspot.com/    chrome
    Maximize Browser Window
    set selenium speed      2 seconds

#    #Get Window title
#    ${getwindowtitle}   Get Window Titles
#    log to console  ${getwindowtitle}

    #Clink New Browser
    click button    //button[normalize-space()='New Browser Window']
    Maximize Browser Window

#    #Get Window Title
#    ${getwindowtitle}   Get Window Titles
#    log to console  ${getwindowtitle}

    #Switch to window
    Switch Window   title=Automation Testing Practice

    #Input Text
    input text   xpath://input[@id='name']      Karthik

    #Close window
    Close Window