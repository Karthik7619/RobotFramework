*** Settings ***
Library  SeleniumLibrary
Resource  /Users/karthikeyanm/RobotFrameworkProject/PageObjectModel_Project/Resources/LoginPage_Keywords.robot

*** Variables ***
${url}          https://admin-demo.nopcommerce.com/login
${browser}      Chrome
${username}     admin@yourstore.com
${password}     admin


*** Test Cases ***
LoginNopCommerce
    Open nopcommerce application    ${url}      ${browser}
    Input Username      ${username}
    Input Password      ${password}
    Click Login button
    Click Logout button

