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
${openPositions_button}      //*[contains(text(),'Open positions')]

### About us page
${aboutUs_page}              id=block-sas-2017-content   

### AMOS page
${amos_page}                 //div[contains(text(),'An MRO')]
${amosetl_button}            //a[contains(text(),'AMOSeTL')]  

### Customers page
${customers_page}            //*[contains(text(),'Loyal AMOS community')]  

### Open positions page
${openPositions_page}        //*[contains(text(),'We are hiring!')]
${jobOpenings_button}        //a[@href="#jobs"]   #//*[contains(text(),'Job openings')]  
${jobOpenings_page}          //*[contains(text(),'Software Test Engineer')]
${testEngineer_button}       //*[contains(text(),'Software Test Engineer')]

### Services page
${services}       //a[@href="#services"]
${customer_support}    //a[@href="#/services/customer-support"]  
${technical_advisory}     //a[@href="#/services/technical-advisory"]  
${project_management}  //a[@href="#/services/project-management"]  
${business_consulting}   //a[@href="#/services/business-consulting"]  
${training}    //a[@href="#/services/training"]  
${data_migration}    //a[@href="#/services/data-transfer"]  
${interfacing}    //a[@href="#/services/interfacing"]  
${amos_application}    //a[@href="#/services/amos-operation-services"]  
${system_customisation}   //a[@href="#/services/system-customisation"]  


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
    And The user clicks on the cookies button
    And The user verifies if openPositions button is visible
    And The user clicks on the openPositions button
    And The user clicks on the cookies button
    And The user verifies if openPositions page is visible
    And The user verifies if jobOpenings button is visible
    And The user clicks on the jobOpenings button 
    And The user verifies if jobOpenings page is visible
    And The user verifies if testEngineer button is visible
    And The user clicks on the testEngineer button
     
Scenario 3: Browse through Services at Swiss Aviation Software
    Given A browser has been opened
    When The user navigates to the Swiss Aviation Software page
    And The user verifies if cookies button is visible
    And The user clicks on the cookies button
    And The user verifies if home page is visible
    And The user verifies if services button is visible
    And The user clicks on the services button 
    And The user verifies if customerSupport button is visible
    And The user clicks on the customerSupport button
    And The user verifies if technicalAdvisory is visible
    And The user clicks on the technicalAdvisory button
    And The user verifies if projectManagement button is visible
    And The user clicks on the projectManagement button 
    And The user verifies if businessConsulting button is visible
    And The user clicks on the businessConsulting button 
    And The user verifies if training button is visible
    And The user clicks on thetTraining button 
    And The user verifies if dataMigration button is visible
    And The user clicks on the dataMigration button 
    And The user verifies if interfacing button is visible
    And The user clicks on the interfacing button 
    And The user verifies if amos_application button is visible
    And The user clicks on the amos_application button 
    And The user verifies if systemCustomisation button is visible
    And The user clicks on the systemCustomisation button 



    



*** Keywords ***
#Set Navigation Timeout
    #[Arguments]    ${60000}


A browser has been opened
    New Browser    chromium    headless=False
    New Page  ${URL}
    Go To    ${URL} 
    Wait For Load State    state=load
       

The user navigates to the Swiss Aviation Software page    
    New Browser    chromium    headless=False
    New Page       ${URL}

The user clicks on the ${string} button
    IF    "${string}" == "jobOpenings"
        Click   ${${string}_button}
    ELSE
        Click   ${${string}_button}
    END
    
The user verifies if ${string} ${second} is ${state}
    IF    "${second}" == "page"
        Wait For Elements State    ${${string}_page}    ${state}
    ELSE
        # Scroll To Element    ${${string}_button}
        Wait For Elements State    ${${string}_button}    ${state}
    END  
    