*** Settings ***
Documentation  Example that opens single page

Library  Browser
        ...  enable_playwright_debug=${True}
        ...  auto_closing_level=TEST
        ...  retry_assertions_for=0:00:03
Library  Collections

*** Variables ***

${url}  https://eth1.ru

*** Keywords ***

Start Chromium Browser
  New Browser  browser=chromium  headless=True
  New Context  viewport={'width': 1920, 'height': 1080}  ignoreHTTPSErrors=True

*** Test Cases ***

Starting a browser with a page
  Start Chromium Browser
  New Page  https://eth1.ru
  Get Title  ==  eth1.ru
  Close Browser

Renovation
  Start Chromium Browser
  New Page    https://www.urn.su/qa/ui/basic_test/
  ${urls}=    Get Elements  text="Renovation"
  # depends on Collections lib
  ${url0}=    Get From List    ${urls}    0
  Click    ${url0}
  Get Title    ==    Ремонт квартир на Коста-дель-Соль
  Close Browser

Italy
  Start Chromium Browser
  New Page    https://www.urn.su/qa/ui/basic_test/
  ${urls}=    Get Elements    text="Italy"
  # depends on Collections lib
  Log    ${urls}
  ${url0}=    Get From List    ${urls}    1
  Click    ${url0}
  Get Title    ==    8 марта в Италии в 2022 году
  Close Browser