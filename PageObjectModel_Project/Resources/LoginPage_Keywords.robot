*** Settings ***
Library  SeleniumLibrary
Variables  /Users/karthikeyanm/RobotFrameworkProject/PageObjectModel_Project/PageElements/Locator.py

*** Keywords ***
Open nopcommerce application
    [Arguments]     ${url}  ${browser}
    Open Browser    ${url}  ${browser}
    Maximize Browser window
    sleep   2s

Input Username
    [Arguments]     ${username}
    input text      ${txt_username}     ${username}

Input Password
    [Arguments]     ${password}
    input text      ${txt_password}     ${password}

Click Login button
    Click button    ${button_Login}
    Sleep   2s


Click Logout button
    Click link    ${link_logout}
    Sleep   2s





