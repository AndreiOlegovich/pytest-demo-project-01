*** Settings ***
Documentation  Example that opens single page

Library  Browser
        ...  enable_playwright_debug=${True}
        ...  auto_closing_level=TEST
        ...  retry_assertions_for=0:00:03
Library  Collections

Force Tags  ui

*** Variables ***

${url}  https://eth1.ru

*** Keywords ***

Test Setup Tasks
  Start Chromium Browser

Start Chromium Browser
  New Browser  browser=chromium  headless=True
  New Context  viewport={'width': 1920, 'height': 1080}  ignoreHTTPSErrors=True

*** Test Cases ***

Starting a browser with a page
  New Page    https://www.urn.su/qa/ui/basic_test/
  Get Title  ==  UI Test Page
  Close Browser


Fill Form
  New Page    https://www.urn.su/qa/ui/basic_test/
  Fill Text  //input[@id="name1"]    topbicycle.ru
  Click    //input[@id="submit1"]
  Get Title    ==    TopBicycle
  Close Browser


Renovation
  New Page    https://www.urn.su/qa/ui/basic_test/
  ${urls}=    Get Elements  text="Renovation"
  # depends on Collections lib
  ${url0}=    Get From List    ${urls}    0
  Click    ${url0}
  Get Title    ==    Ремонт квартир на Коста-дель-Соль
  Close Browser


Italy
  New Page    https://www.urn.su/qa/ui/basic_test/
  ${urls}=    Get Elements    //a[@class="march8"]
  # depends on Collections lib
  Log    ${urls}
  ${url0}=    Get From List    ${urls}    0
  Click    ${url0}
  Get Title    ==    8 марта в Италии в 2022 году
  Close Browser


Img
  New Page    https://www.urn.su/qa/ui/basic_test/
  ${images}=    Get Elements    //img[@class="w100 firstimage"]
  # depends on Collections lib
  ${img0}=    Get From List    ${images}    1
  Click    ${img0}
  Get Title    ==    Тренировка для людей с проблемами со спиной и позвоночником
  Close Browser


Radio Buttons
  [Tags]    radio
  New Page    https://www.urn.su/qa/ui/basic_test/
  ${buttons}=    Get Elements    //input[@name="house"]
  # depends on Collections lib
  ${button0}=    Get From List    ${buttons}    0
  ${button2}=    Get From List    ${buttons}    2
  Get Element States    ${button0}    validate    checked
  Check Checkbox    ${button2}
  Get Element States    ${button0}    not contains    checked
  Get Element States    ${button2}    validate    checked
  Close Browser