*** Settings ***
Documentation        To validate a browser
Library                SeleniumLibrary


*** Test Cases ***
Mytestcases

        Create Webdriver    Chrome      executable_path=C:\Program Files\Drivers\chromedriver11\chromedriver.exe
        Go To       https://mytimesheet.in/
        Maximize Browser Window
        Sleep    2
        ${title1}=  Get Title
        Log To Console    ${title1}


#        Create Webdriver    Chrome      executable_path=C:\Program Files\Drivers\chromedriver11\chromedriver.exe
        Go To    https://www.youtube.com/
        Maximize Browser Window
        Sleep    2

#        Switch Browser    1
#        ${title1}=  Get Title
#        Log To Console    ${title1}
        
#        Switch Browser    2
        ${title2}=  Get Title
        Log To Console    ${title2}

        Go Back
        ${loc}=  get location
        Log To Console    ${loc}
        Sleep    3

