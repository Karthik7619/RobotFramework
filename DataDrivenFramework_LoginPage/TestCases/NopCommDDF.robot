*** Settings ***
Library  SeleniumLibrary
Resource  /Users/karthikeyanm/RobotFrameworkProject/DataDrivenFramework_LoginPage/Resources/Resources_LoginPage.robot
Suite Setup  Invokenopcommerce
#Suite Teardown  Close Browsers
Test Template  Invalid Login
Test Template  Valid Login

*** Test Cases ***
EmptyPwd    admin@yourstore.com     ${EMPTY}
InvalidPwd  admin@yourstore.com     admin1
EmptyUser   ${EMPTY}    admin
InvlidUser  admin@store.com         admin


*** Keywords ***
Invalid Login
    [Arguments]     ${username}    ${password}
    Enter Username  ${username}
    Enter Password  ${password}
    Click login button
    Error message displayed

Valid Login
    [Arguments]     ${username}  ${password}
    Enter Username  ${username}
    Enter Password  ${password}
    Click login button
    LogoutNopComm
    Dashboard is displayed