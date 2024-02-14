*** Settings ***
Library  SeleniumLibrary

Suite Setup     log to console      Opening Browser
Suite Teardown  log to console      Closing the Browser

Test Setup      log to console      Login to application
Test Teardown   log to console      Logout from application

*** Test Cases ***
TC1
    [Tags]  regression
    log to console      This is Prepaid User
TC2
    [Tags]  sanity
    log to console      This is Postpaid User
TC3
    [Tags]  regression
    log to console      This is Prepaid Search
TC4
    [tags]  sanity
    log to console      This is Postpaid Search

