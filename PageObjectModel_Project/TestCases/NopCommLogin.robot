*** Settings ***
Library  SeleniumLibrary
Resource  /Users/karthikeyanm/RobotFrameworkProject/PageObjectModel_Project/Resources/LoginPage_Keywords.robot
Resource  /Users/karthikeyanm/RobotFrameworkProject/PageObjectModel_Project/Resources/AddStoreInfo_Keywords.robot

*** Variables ***
${url}          https://admin-demo.nopcommerce.com/login
${browser}      Chrome
${username}     admin@yourstore.com
${password}     admin
${Storename}    SarahFashionStore
${Storeurl}     http://admin-demo.nopcommerce.com/


*** Test Cases ***
LoginNopCommerce
    Open nopcommerce application    ${url}      ${browser}
    Input Username      ${username}
    Input Password      ${password}
    Click Login button
#    Click Logout button

    #Add Store Information
    Invoke Dashboard
    Sleep   2s
    Expand Orders list
    Sleep   5s
    Add Store Information

    #Handle alert
    Handle Alert    action=ACCEPT
    Sleep   2s
    Handle alert    action=ACCEPT
    Close the Store name alert window

    Input Store Name    ${Storename}
    Input Store Url     ${Storeurl}
    Click Save button
    Click Delete button
    Get Today's Date
    NopCommerce Version
    NopCommerce Website
    Close Browser
    Back to store



