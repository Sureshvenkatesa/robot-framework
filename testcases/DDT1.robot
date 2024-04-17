*** Settings ***
Library     SeleniumLibrary
Resource    ../Resources/login_resources.robot

Suite Setup     Open my Browser
Suite Teardown      Close All Browsers
Test Template       Invalid Login


*** Test Cases ***      username            password
Right user empty pass   admin@yourstore.com     ${EMPTY}
Right user wrong pass   admin@yourstore.com     xyz
wrong user right pass   ad@yourstore.com        admin
wrong user empty pass   ad@yourstore.com        ${EMPTY}
wrong user wrong pass   admin@yourstore.com     xyz


*** Keywords ***
Invalid Login
    [Arguments]     ${username}     ${password}
    Input username    ${username}
    Input pwd    ${password}
    click login button
    Error message should be visible




