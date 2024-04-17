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
        ${speed}=   Get Selenium Speed
        Log To Console    ${speed}

        Create Webdriver    Firefox      executable_path=r'C:\Users\Suresh V\PycharmProjects\pythonProject2022\geckodriver.exe'
        Go To   https://demo.automationtesting.in/Register.html
        Maximize Browser Window
#        Set Selenium Speed    2seconds
#        select from list by index    Skills      4


Enter the login credentials
        Execute Javascript  window.scrollTo(0,document.body.scrollHeight)    #end of the page
        Sleep    2
        select from list by label    Skills     C
        Sleep    3

#        Select From List By Label    country    Australia
#        Sleep    2

#        Select From List By Label    country    Bangladesh
##        Sleep    2
        Select Radio Button    radiooptions    Male
        Select From List By Label    yearbox    1920
        Sleep    2
#        Click Element    //select[@placeholder='Month']
#        Sleep    2
#        Click Element    //option[@value='March']
#        Sleep    2

         Select From List By Value    (//select[@type="text"])[5]   April
         Sleep    4
