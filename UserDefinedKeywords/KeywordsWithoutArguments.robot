*** Settings ***
Library  SeleniumLibrary
Resource  /Users/karthikeyanm/RobotFrameworkProject/UserDefinedKeywords/Resources/KeywordsWOA.robot

*** Variables ***
${Browser}  Chrome
${URL}      https://opensource-demo.orangehrmlive.com/web/index.php/auth/login

*** Test Cases ***
LoginOrangeHRM
    LoginApplication
    input text      name:username       Admin
    input text      name:password       admin123
    click button    xpath://button[normalize-space()='Login']
    Sleep   2s

