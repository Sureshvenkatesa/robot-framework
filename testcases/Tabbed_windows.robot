*** Settings ***
Documentation        To validate a browser
Library                SeleniumLibrary

*** Test Cases ***
Mytestcases
        Create Webdriver    Chrome      executable_path=C:\Program Files\Drivers\chromedriver11\chromedriver.exe
        Go To       https://demo.automationtesting.in/Windows.html
        Maximize Browser Window
        Click Element    //a[normalize-space()='Open New Tabbed Windows']
        select window   title=Selenium
        Click Link    Projects

