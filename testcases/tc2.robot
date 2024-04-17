*** Settings ***
Documentation        To validate a browser
Library                SeleniumLibrary


*** Variables ***
${browser}  firefox     executable_path=r'C:\Users\Suresh V\PycharmProjects\pythonProject2022\geckodriver.exe'
${url}      https://www.dummyticket.com/


*** Test Cases ***
E-commerce automation loginn
    Open the browser using the url
    Enter the login credentials
    Close Browser

*** Keywords ***
Open the browser using the url
        ${speed}=   Get Selenium Speed
        Log To Console    ${speed}

#        Create Webdriver    Firefox      executable_path=r'C:\Users\Suresh V\PycharmProjects\pythonProject2022\geckodriver.exe'
#        Go To   https://www.dummyticket.com/
        Open Browser
        Go To    ${url}
        Maximize Browser Window
#        Set Selenium Speed    2seconds


Enter the login credentials
        Set Selenium Timeout    10
        Wait Until Page Contains    Dummy ticket

        Set Browser Implicit Wait    10

        Click Link      //a[contains(text(),'Buy Ticket')]
        Select Radio Button    add_to_cart    3186
        Input Text    //input[@id='travname']   sivani
        Input Text    //input[@id='travlastname']    Ramshanker

        Select Radio Button     sex     2
#        Select Checkbox    //input[@id='addmorepax']
#        Sleep    3
#        Click Element    //span[@id='select2-addpaxno-container']
#        Sleep    3
#        Click Element    //select[@id='addpaxno']//option[normalize-space()='add 3 more passengers (300%)']
#
        
        Input Text    //textarea[@id='notes']    goinghome
        

######DROPDOWN

#        Select From List By Label   reasondummy     Expedite passport renewal
#        Sleep    3
#        Select From List By Index       reasondummy     4


        ${speed}=   Get Selenium Speed
        Log To Console    ${speed}








