*** Settings ***
Library  SeleniumLibrary



*** Variables ***
${Browser}      Chrome
${Url}          https://admin-demo.nopcommerce.com/

*** Keywords ***
Invokenopcommerce
    Open Browser    ${Url}   ${Browser}
    maximize browser window
    sleep   5s

CloseBrowsers
    Close All Browsers

Enter Username
    [Arguments]     ${user name}
    input text  id:Email    ${user name}

Enter Password
    [Arguments]     ${password}
    input text  id:Password     ${password}

Click login button
    click button    xpath://button[normalize-space()='Log in']
    sleep   2s

LogoutNopComm
    click link  Logout
    sleep   2s

Error message displayed
    page should contain     Login was unsuccessful

Empty Username Error message
    page should contain     Please enter your email

Dashboard is displayed
    Title Should Be     Your store. Login




