*** Settings ***
Documentation        To validate a browser
Library     SeleniumLibrary


*** Test Cases ***
Mytestcases

        Create Webdriver    Firefox      executable_path=r'C:\Users\Suresh V\PycharmProjects\pythonProject2022\geckodriver.exe'
        Go To       https://www.countries-ofthe-world.com/world-currencies.html
        Maximize Browser Window

#        Execute Javascript  window. scrollTo(0,1000)
#        Sleep    3
#        Scroll Element Into View    //td[normalize-space()='India']
#        Sleep    2

        Execute Javascript  window.scrollTo(0,document.body.scrollHeight)    #end of the page
        Sleep    2
#
#        Execute Javascript  window.scrollTo(0,-document.body.scrollHeight)    # starting  of the page
#        Sleep    2


