*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${browser}      Chrome
${url}          https://admin-demo.nopcommerce.com/login?ReturnUrl=%2Fadmin%2F

*** Keywords ***
StartTestCase
    Open Browser    ${url}      ${browser}
    Maximize Browser Window
    Set Selenium Speed      1s

CloseTestCase
    Close Browser

RunLogKeyword
    Log     Test case is fail

