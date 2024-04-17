*** Settings ***
Documentation        To validate a browser
Library                SeleniumLibrary


*** Variables ***
#${browser}  Chrome     executable_path=C:\Program Files\Drivers\chromedriver11\chromedriver.exe
#${url}      https://demo.nopcommerce.com/


*** Test Cases ***
E-commerce automation loginn
    Open the browser using the url
    Enter the login credentials
    Close Browser

*** Keywords ***
Open the browser using the url
        Create Webdriver    Firefox      executable_path=r'C:\Users\Suresh V\PycharmProjects\pythonProject2022\geckodriver.exe'
        Go To    https://demo.nopcommerce.com/
        Maximize Browser Window

Enter the login credentials
        Click Link      xpath://a[normalize-space()='Log in']
        Input Text    //input[@id='Email']  pavanoltraininng@gmail.com
        Input Text    //input[@id='Password']    Test@123
        Click Element   //button[normalize-space()='Log in']










