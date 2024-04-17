*** Settings ***
Documentation        To validate a browser
Library     SeleniumLibrary


*** Test Cases ***
Mytestcases

        Create Webdriver    Firefox      executable_path=r'C:\Users\Suresh V\PycharmProjects\pythonProject2022\geckodriver.exe'
        Go To       https://opensource-demo.orangehrmlive.com/
        Maximize Browser Window
        Sleep    2
        Capture Element Screenshot    //img[@alt='company-branding']    logo.png
        Sleep    2
        Input Text      //input[@placeholder='Username']    Admin
        Input Text      //input[@placeholder='Password']    admin123
        Click Element   //button[normalize-space()='Login']
        Sleep    2


        Capture Page Screenshot     login.png
        Close Browser







