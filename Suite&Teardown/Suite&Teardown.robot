*** Settings ***
Library  SeleniumLibrary

Suite Setup     log to console      Opening Browser
Suite Teardown  log to console      Closing the Browser

Test Setup      log to console      Login to application
Test Teardown   log to console      Logout from application

*** Test Cases ***
TC1
    log to console      This is Prepaid User
TC2
    log to console      This is Postpaid User
TC3
    log to console      This is Prepaid Search
TC4
    log to console      This is Postpaid Search

