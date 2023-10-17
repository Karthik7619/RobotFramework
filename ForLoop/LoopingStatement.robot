*** Settings ***
Library  SeleniumLibrary

*** Test Cases ***
#ForLoopSt
#    @{namelist}     createlist         john    smith
#    FOR   ${i}    IN     @{namelist}
#        Log to console  ${i}
#    END

ForLoopNum
    @{numlist}      createlist      1   2   3   4   5
    FOR     ${i}    IN      @{numlist}
        Log to console  ${i}
        exit for loop if    ${i}==2
    END
