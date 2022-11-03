*** Settings ***
Documentation     An example breaking out of the for loop based on some condition.

*** Variables ***
@{BIKES}=        Stels    Forward    Author    Trek

*** Tasks ***
Regular loop
    FOR    ${bike}    IN    @{BIKES}
	Log To Console   \n${bike}
    END


Break out of the for loop on condition
    FOR    ${bike}    IN    @{BIKES}
        Exit For Loop If    $bike == 'Author'
	Log To Console   \n${bike}
    END

Numeric For
    ${i}=  Set Variable  0
    FOR  ${i}  IN RANGE  51
       Log To Console  ${i}
    END

Numeric For Range
    ${i}=  Set Variable  0
    FOR  ${i}  IN RANGE  52  251
       Log To Console  ${i}
    END

