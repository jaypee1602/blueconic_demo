*** Settings ***
Library    Browser

*** Variables ***
${URL}                       https://www.swiss-as.com
${BROWSER}                   chromium

### Homepage
${cookies_button}            //button[contains(text(),'Accept all cookies')]
${home_page}                 .main-logo
${aboutUs_button}            //a[contains(text(),'About Us')]
${amos_button}               //a[@href="/amos-mro"]
${customers_button}          //a[@href="/customers"]
${openPositions_button}      //a[@href="https://swissas.teamtailor.com/"]

### About us page
${aboutUs_page}              id=block-sas-2017-content   

### AMOS page
${amos_page}                 //div[contains(text(),'An MRO')]
${amosetl_button}            //a[contains(text(),'AMOSeTL')]  

### Customers page
${customers_page}            //*[contains(text(),'Loyal AMOS community')]  

### Open positions page
${openPositions_page}        //*[contains(text(),'Loyal AMOS community')]  



*** Test Cases ***
Scenario 1: Navigate through Swiss Aviation Software page
    Given A browser has been opened
    When The user navigates to the Swiss Aviation Software page
    And The user verifies if cookies button is visible
    And The user clicks on the cookies button
    And The user verifies if home page is visible
    And The user verifies if aboutUs button is visible
    And The user clicks on the aboutUs button 
    And The user verifies if aboutUs page is visible
    And The user verifies if amos button is visible
    And The user clicks on the amos button 
    And The user verifies if amos page is visible
    And The user verifies if customers button is visible
    And The user clicks on the customers button 
    Then The user verifies if customers page is visible

Scenario 2: Apply at Swiss Aviation Software
    Given A browser has been opened
    When The user navigates to the Swiss Aviation Software page    
    And The user verifies if openPositions button is visible
    And The user clicks on the openPositions button 
    And The user verifies if open openPositions page is visible




*** Keywords ***
A browser has been opened
    New Browser    ${BROWSER}    headless=False    slowMo=0:00:2

The user navigates to the Swiss Aviation Software page    
    New Page    ${URL}

The user clicks on the ${string} button
    Click   ${${string}_button}

The user verifies if ${string} ${second} is ${state}
    IF    "${second}" == "page"
        Wait For Elements State    ${${string}_page}    ${state}
    ELSE
        Wait For Elements State    ${${string}_button}    ${state}
    END  
    