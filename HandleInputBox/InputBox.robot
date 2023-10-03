*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${url}      https://demo.nopcommerce.com/
${browser}  chrome

*** Test Cases ***
InputBox
    Open Browser    ${url}  ${browser}
    Maximize Browser window
    sleep   5s
    click link   xpath://a[normalize-space()='Log in']
    title should be     nopCommerce demo store. Login
    ${email_id} =    Set Variable    id:Email

    element should be visible   ${email_id}
    element should be enabled   ${email_id}

    input text  ${email_id}     karthik.nexgen@gmail.com
    sleep   5s
    clear element text  ${email_id}
    sleep   5s
    close browser

