*** Settings ***
Library  SeleniumLibrary

*** Variables ***


*** Test Cases ***
TabbedWindow
    #Invoke Url
    Open Browser    https://testautomationpractice.blogspot.com/    chrome
    Maximize Browser Window
    sleep   2s

#    #Get Window title
#    ${getwindowtitle}   Get Window Titles
#    log to console  ${getwindowtitle}

    #Get Title of the page
    ${title}    get title
    log to console      ${title}

    capture element screenshot  xpath://h1[normalize-space()='Automation Testing Practice']     logo.png

#    #Clink New Browser
#    click button    //button[normalize-space()='New Browser Window']
#    Maximize Browser Window

    go to   https://www.amazon.in
    Maximize browser window
    sleep   2s

    ${loc}      get location
    log to console  ${loc}

    go back

    ${loc}      get location
    log to console  ${loc}

    ${title}    get title
    log to console      ${title}

#    #Get Window Title
#    ${getwindowtitle}   Get Window Titles
#    log to console  ${getwindowtitle}

#    #Switch to window
#    Switch Window   title=Automation Testing Practice

    Switch Browser   1

    ${title}    get title
    log to console      ${title}


    #Input Text
    input text   xpath://input[@id='name']      Karthik

    capture page screenshot     automationpage.png

    #Close window
    Close browser