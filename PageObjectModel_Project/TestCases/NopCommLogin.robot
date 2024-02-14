*** Settings ***
Library  SeleniumLibrary
Resource  /Users/karthikeyanm/RobotFrameworkProject/PageObjectModel_Project/Resources/LoginPage_Keywords.robot
Resource  /Users/karthikeyanm/RobotFrameworkProject/PageObjectModel_Project/Resources/AddStoreInfo_Keywords.robot
Library  SeleniumLibrary
Resource  /Users/karthikeyanm/RobotFrameworkProject/PageObjectModel_Project/Resources/LoginPage_Keywords.robot
Resource  /Users/karthikeyanm/RobotFrameworkProject/PageObjectModel_Project/Resources/AddStoreInfo_Keywords.robot

*** Variables ***
${url}          https://admin-demo.nopcommerce.com/login
${browser}      chrome
${username}     admin@yourstore.com
${password}     admin
${Storename}    SarahFashionStore
${Storeurl}     http://admin-demo.nopcommerce.com/


*** Test Cases ***
LoginNopCommerce
    Open nopcommerce application    ${url}      ${browser}
    Set Selenium Speed  1s
    Input Username      ${username}
    Input Password      ${password}
    Click Login button


    #Add Store Information
    Invoke Dashboard
#    Expand Orders list
    Add Store Information

#    #Handle alert
#    Handle Alert    action=ACCEPT
#    Sleep   2s
#    Handle alert    action=ACCEPT
    Close the Store name alert window

#    Input Store Name    ${Storename}
#    Input Store Url     ${Storeurl}
##    Click Save button
#    MouseOver Basic and Advanced option
    Get Today's Date
    NopCommerce Version
    NopCommerce Website
    Click Logout button
    Close Nocomm Browser

    #Close tabbed browser
    #switched to main window
    #get the text value from web element
    #Mouse over option




