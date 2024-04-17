*** Settings ***
Documentation        To validate a browser
Library     SeleniumLibrary


*** Test Cases ***
Mytestcases

        Create Webdriver    Chrome      executable_path=C:\Program Files\Drivers\chromedriver11\chromedriver.exe
        Go To       https://www.selenium.dev/selenium/docs/api/java/index.html?overview-summary.html
        Maximize Browser Window
        
        Select Frame    packageListFrame
        Click Link      org.openqa.selenium
        Unselect Frame
        Sleep    3
        
        Select Frame    packageFrame
        Click Link      WebDriver
        Unselect Frame
        Sleep    3







