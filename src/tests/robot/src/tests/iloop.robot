
*** Settings ***
Documentation     An example of while loop

*** Tasks ***

WHILE: zero to fifty
    ${x}=    Set Variable    ${0}
    WHILE    ${x} < 51
        Log To Console    ${x}
        ${name}=  Catenate  name${x}
	Log To Console  ${name}
        ${x}=    Evaluate    ${x} + 1
    END

