*** Settings ***

*** Test Cases ***

Mod X
  ${x}=    Set Variable    ${0}
  FOR    ${x}  IN RANGE  1  20
      ${x}=    Evaluate    ${x} + 1
      ${mod_x}=  Evaluate  ${x}%3
      Run Keyword If  ${mod_x}==0  Log To Console  ${x}
  END

