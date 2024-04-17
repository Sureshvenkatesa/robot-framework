*** Settings ***
Documentation        To validate a browser
Library                SeleniumLibrary


*** Test Cases ***
#forloop
#    FOR    ${i}    IN RANGE   1     10
#        Log To Console   ${i}
#    END
#
#forloop 2
#    @{items}    Create List     1 2 3 4 5
#    FOR    ${i}    IN    @{items}
#        Log To Console    ${i}
#    END
#
#forloop 3
#    FOR    ${i}    IN   ajith  akilan  suresh  mano    #(if 1 space given it will print in same line )
#        Log To Console    ${i}                          #(double space will print in next line )
#
#    END

forloop 4 with exit
    @{items}    Create List     1   2   3   4   5
    FOR    ${i}    IN    @{items}
        Log To Console    ${i}
        Exit For Loop If    ${i}==3
    END
#


