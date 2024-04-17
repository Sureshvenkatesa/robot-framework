*** Settings ***
Documentation       to validate the amazon booking
Library     SeleniumLibrary

*** Variables ***
${browser}      firefox     executable_path=r'C:\Users\Suresh V\PycharmProjects\pythonProject2022\geckodriver.exe'
${url}          https://www.amazon.in/

*** Test Cases ***
amazon booking
    Open the browser using the url
    Enter the login credentials
    Close Browser

*** Keywords ***
open the browser using the url
        Open Browser
        Go To       ${url}
        Maximize Browser Window

Enter the login credentials
        Set Selenium Speed    1
        Input Text    //input[@id='twotabsearchtextbox']    gym bag for men
        Click Element    //input[@id='nav-search-submit-button']
        Input Text    //input[@id='low-price']    300
        Input Text    //input[@id='high-price']    500
        Click Element    //span[@id='a-autoid-1']//input[@type='submit']
