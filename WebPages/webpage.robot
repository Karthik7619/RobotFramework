*** Settings ***
Library  SeleniumLibrary

*** Variables ***

*** Test Cases ***
SelectElements
    Open Browser    https://only-testing-blog.blogspot.com/    chrome
    Maximize Browser Window
    set selenium speed  2 seconds

#    #select checkbox
#    select checkbox     check2
#    select checkbox     check3
#
#    #select radiobutton
#    select radiobutton  xpath:radio1    male

     #Dropdown
#    select from list by value    xpath:(//select)[13]   Singapore
#    select from list by index   xpath:(//select)[13]    3
#    select from list by label   xpath:(//select)[13]    Saab


