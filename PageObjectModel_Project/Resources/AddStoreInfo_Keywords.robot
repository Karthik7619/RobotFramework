*** Settings ***
Library  SeleniumLibrary
Variables  /Users/karthikeyanm/RobotFrameworkProject/PageObjectModel_Project/PageElements/Locator.py

*** Keywords ***
Invoke Dashboard
    click element    ${link_dashboard}

Expand Orders list
    click element   ${link_collapse}
    click element   ${link_expand}

Add Store Information
    click element   ${link_Storeinfo}

Close the Store name alert window
    click element   ${link_closesym}

Input Store Name
    [Arguments]     ${Storename}
    clear element text  ${text_storename}
    input text  ${text_storename}   ${storename}

Input Store Url
    [Arguments]     ${Storeurl}
    clear element text  ${text_storeurl}
    input text  ${text_storeurl}     ${Storeurl}

#Click Save button
#    click button    ${button_save}
#    click button    ${button_savecontinue}

MouseOver Basic and Advanced option
#    Mouse Over      ${mouseover_Basic}
#    Click Element   ${mouseover_Basic}
    Wait Until Element is Visible   ${mouseover_Basic}
    Sleep   2s
    Execute JavaScript    arguments[0].scrollIntoView(true);    Get Element    ${mouseover_Basic}

# Now you can interact with the element
#    Sleep   2s
#    Mouse Over      ${mouseover_advanced}
#    Click Element   ${mouseover_advanced}

#Click Delete button
#    click element   ${button_Delete}
#    Handle alert    dismiss
#    click element   ${button_Delete}
#    Handle alert    accept

Get Today's Date
    ${TodayDate}    get text    ${gettext_todaydate}
    log to console     Today's Date is: ${gettext_todaydate}

NopCommerce Version
    ${NopCommVersion}   get text    ${gettext_nopversion}
    log to console     NopCommerceVersion: ${gettext_nopversion}

NopCommerce Website
    click element       ${link_nopcommwebsite}
    SLeep   2s
    title should be    Edit store details / nopCommerce administration
    Sleep   2s

Close Nocomm Browser
    close browser

