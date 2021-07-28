*** Keywords ***

SFDC_ProductionLogin
    [Documentation]     Logs into SFDC with username and Secret parameter named 'Password'
    [Arguments]         ${username}
    GoTo                https://login.salesforce.com/
    TypeText            Username                  ${username}
    TypeSecret          Password                ${Password}
    ClickText           Log In     

SFDC_NavigateToTab
    [Documentation]    Uses the App Launcher to open a tab
    [Arguments]    ${tabName}
    ClickText      App Launcher
    TypeText       Search apps and items...  ${tabName}
    ClickText      ${tabName}                View All

SFDC_OpenListView
    [Documentation]    Opens a list view
    [Arguments]    ${tabName}
    ClickText         Select List View
    ClickText         ${tabName}    List Views
    
SFDC_ClickListViewRowAction
    [Documentation]    Opens a list view row's action dropdown. Needs a field value on the row as an anchor.
    [Arguments]        ${rowTextAnchor}    ${actionText}
    ClickText         Show Actions       ${rowTextAnchor}
    ClickText         xpath\=//div[@role\='menu']//a[@role\='menuitem' and @title\='${actionText}']

SFDC_ClickRecordPageAction
    [Documentation]    Clicks on an Action button on a record page
    [Arguments]        ${buttonText}
    ClickText          xpath\=//runtime_platform_actions-action-renderer[@title\='${buttonText}']

SFDC_ClickListViewActionButton
    [Documentation]    Clicks an Action button on a list view screen
    [Arguments]        ${buttonText}
    ClickText         xpath\=//ul[contains(@class,"forceActionsContainer")]//a[@title\='${buttonText}']

SFDC_AssignLookupValue 
    [Documentation]    Assigns a value to a lookup field in Salesforce
    [Arguments]    ${placeHolderText}    ${lookupValue}
    TypeText     ${placeHolderText}       ${lookupValue}
    PressKey    ${placeHolderText}     {ENTER}
    VerifyText                Show All Results for "${lookupValue}"                window_find=True
    PressKey    ${placeHolderText}     {ENTER}
    ClickText    xpath\=//div[contains(@class,'searchScroller')]//a[@title\='${lookupValue}']

SFDC_AssignDatePickerValue  
    [Documentation]    Assigns a value to the Date portion of the date picker. Does not assign values to Time portion
    [Arguments]    ${fieldApiName}    ${dateValue}
    TypeText     xpath\=//lightning-datepicker//input[@name\='${fieldApiName}']        ${dateValue}
