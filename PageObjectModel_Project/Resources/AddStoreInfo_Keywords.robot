*** Settings ***
Library  SeleniumLibrary
Variables  /Users/karthikeyanm/RobotFrameworkProject/PageObjectModel_Project/PageElements/Locator.py

*** Keywords ***
Invoke Dashboard
    click element    ${link_dashboard}

Expand Orders list
#    click element   ${link_collapse}
#    Sleep   10s
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
    input text  ${Storeurl}     ${Storeurl}

Click Save button
    click button    ${button_save}
    Sleep   2s
    click button    ${button_savecontinue}
    click element   ${mouseover_Basic}
    Sleep   2s
    click element   ${mouseover_advanced}
    Sleep   2s

Click Delete button
    click element   ${button_Delete}
    Handle alert    dismiss
    Sleep   5s
    click element   ${button_Delete}
    Handle alert    accept

Get Today's Date
    ${TodayDate}    get text    ${gettext_todaydate}
    log     Today's Date is: ${gettext_todaydate}

NopCommerce Version
    ${NopCommVersion}   get text    ${gettext_nopversion}
    log     NopCommerceVersion: ${gettext_nopversion}

NopCommerce Website
    click element       ${link_nopcommwebsite}
    SLeep   2s
    title page should be    Free and open-source eCommerce platform. ASP.NET Core based shopping cart. - nopCommerce
    Sleep   2s

Close Browser
    close browser

Back to store
    click element   ${link_backtostore}


