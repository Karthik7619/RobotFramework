*** Settings ***
Library  SeleniumLibrary

*** Variables ***

*** Test Cases ***
Alerts
    Open Browser    https://testautomationpractice.blogspot.com/    chrome
    click element   //button[normalize-space()='Alert']
    Maximize Browser window
    set selenium timeout    10 seconds

    # Check if an alert is present
    Alert Should Be Present

    # Get the text of the alert
    ${alert_text} =    Get Alert Text

    # Handle the alert as needed (e.g., accept it)
    Handle Alert    ACCEPT

    # Verify the alert text
    Should Be Equal As Strings    ${alert_text}    This is the expected alert text