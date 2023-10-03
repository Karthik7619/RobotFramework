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
    click   xpath://a[normalize-space()='Log in']
    title should be     nopCommerce demo store
    ${email_id} set variable    id:Email

    element should be visible   ${email_id}
    element should be enabled   ${email_id}


