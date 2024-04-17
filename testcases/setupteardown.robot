*** Settings ***
Suite Setup     Log To Console    opening browser
Suite Teardown      Log To Console    closing browser

Test Setup      Log To Console    login to application
Test Teardown       Log To Console    logout from application

*** Test Cases ***
TC1 prepaid recharge
    Log To Console    this is process 1
TC2 postpaid recharge
    Log To Console    this is process 2
TC3 search
    Log To Console    this is process 3
