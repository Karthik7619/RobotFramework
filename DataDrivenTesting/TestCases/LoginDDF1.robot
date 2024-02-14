*** Settings ***
Library     SeleniumLibrary
Resource  /Users/karthikeyanm/RobotFrameworkProject/DataDrivenTesting/Resource/ResourcesDDF1.robot

Suite Setup     StartTestCase
Suite Teardown  CloseTestCase
Test Template   Invalid Login User


*** Variables ***
${txt_username}     id:Email
${txt_password}     id:Password

*** Test Cases ***                          username                passwords
#Login nopcommerce - Invalid Username       admin@yourstore.com1     admin
Login nopcommerce - Invalid Password       admin@yourstore.com      admin1
#Login nopcommerce - Valid User&Password    admin@yourstore.com      admin

*** Keywords ***
Invalid Login User
    [Arguments]     ${username}         ${password}
    Clear Element Text  ${txt_username}
    Input text      ${txt_username}     ${username}

    Clear Element Text  ${txt_password}
    Input text      ${txt_password}     ${password}

    Click Element    xpath://button[normalize-space()='Log in']
    ${result}=   page should contain     Login was unsuccessful.


#    ${pass}=    page should contain     Dashboard
    RunLogKeyword

