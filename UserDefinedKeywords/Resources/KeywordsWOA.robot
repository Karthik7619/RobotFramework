*** Settings ***
Library  SeleniumLibrary


*** Keywords ***
LoginApplication
    Open Browser    ${URL}      ${Browser}
    Maximize Browser Window
    Sleep   2s