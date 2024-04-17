*** Settings ***
Documentation        To validate a browser
Library                SeleniumLibrary



*** Test Cases ***
Mytestcases

        Create Webdriver    Firefox      executable_path=r'C:\Users\Suresh V\PycharmProjects\pythonProject2022\geckodriver.exe'
        Go To       https://testautomationpractice.blogspot.com/
        Maximize Browser Window
        Click Element       //button[normalize-space()='Alert']
        Sleep    2
#        Handle Alert    accept
#        Handle Alert    dismiss
#        Handle Alert    leave
        Alert Should Be Present     I am an alert box!
        Sleep    2







