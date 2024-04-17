*** Settings ***
Library     SeleniumLibrary
Resource    ../Resources/login_resources.robot
Library     DataDriver  D:/myfile/logindata.xlsx    sheet_name=Sheet1


Suite Setup     Open my Browser
Suite Teardown      Close All Browsers
Test Template       Invalid Login


*** Test Cases ***
LoginTestwithExcel using ${username} and ${password}


*** Keywords ***
Invalid Login
    [Arguments]     ${username}     ${password}
    Input username    ${username}
    Input pwd    ${password}
    click login button
    Error message should be visible










