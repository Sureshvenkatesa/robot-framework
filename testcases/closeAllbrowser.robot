*** Settings ***
Documentation        To validate a browser
Library                SeleniumLibrary


*** Test Cases ***
Mytestcases

        Create Webdriver    Chrome      executable_path=C:\Program Files\Drivers\chromedriver11\chromedriver.exe
        Go To   https://www.dummyticket.com/
        Maximize Browser Window

        Create Webdriver    Chrome      executable_path=C:\Program Files\Drivers\chromedriver11\chromedriver.exe
        Go To    https://mytimesheet.in/dashboard
        Sleep    2


        Close All Browsers
