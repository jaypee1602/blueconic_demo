*** Settings ***
Library    Browser
Library    RequestsLibrary

*** Variables ***
${URL}                       https://www.swiss-as.com
${BROWSER}                   chromium
${string}   
${response}                 
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
${customerList_button}        //a[@href="/customers/customer_list" and contains(@class, "content-teaser-link")]
${testimonials_button}        //a[@href="/customers/testimonials" and contains(@class, "content-teaser-link")]

### Open positions page
${openPositions_page}        //*[contains(text(),'We are hiring!')]
${jobOpenings_button}        //a[@href="#jobs"]   #//*[contains(text(),'Job openings')]  
${jobOpenings_page}          //*[contains(text(),'Software Test Engineer')]
${testEngineer_button}       //*[contains(text(),'Software Test Engineer')]

### Services page
${services_button}       //a[@href="/services"]
${customerSupport_button}    //a[@href="/services/customer-support" and contains(@class, "content-teaser-link")]
${technicalAdvisory_button}    //a[@href="/services/technical-advisory" and contains(@class, "content-teaser-link")]
${projectManagement_button}    //a[@href="/services/project-management" and contains(@class, "content-teaser-link")]  
${businessConsulting_button}   //a[@href="/services/business-consulting" and contains(@class, "content-teaser-link")]  
${training_button}    //a[@href="/services/training" and contains(@class, "content-teaser-link")]  
${dataMigration_button}    //a[@href="/services/data-transfer" and contains(@class, "content-teaser-link")]  
${interfacing_button}    //a[@href="/services/interfacing" and contains(@class, "content-teaser-link")]  
${amosApplication_button}    //a[@href="/services/amos-operation-services" and contains(@class, "content-teaser-link")]  
${systemCustomisation_button}   //a[@href="/services/system-customisation" and contains(@class, "content-teaser-link")]  


### Training Service Page
${classroomTraining_button}      //a[@href="/services/training/classroom-training" and contains(@class, "content-teaser-link")]
${elearning_button}              //a[@href="/services/training/e-learning" and contains(@class, "content-teaser-link")]
${virtualClassroom_button}       //a[@href="/services/training/virtual-classroom" and contains(@class, "content-teaser-link")]



### Contacts
${contacts_ button}    //a[@href="/contact" and text()="Contacts"]

### News and Events page
${newsAndEvents_button}     //a[@href="/news-events"] 
${news_button}              //a[@href="/news-events/news"]
${events_button}            //a[@href="/news-events/events"]
${media_button}             //a[@href="/news-events/media" and contains(@class, "content-teaser-link")]

### Social media channels
${linkedin_button}    //a[@href="http://www.linkedin.com/company/1371863?trk=NUS_CMPY_FOL-pdctd"]
${facebook_button}    //a[@href="https://www.facebook.com/Swiss-Aviation-Software-787608771283227"]
${x_button}           //a[@href="https://www.x.com/swiss_as"]
${youtube_button}     //a[@href="https://www.youtube.com/channel/UCRBjtLC3YUpJ60pJT-R4dCg"]

###  Privacy
${privacy_ button}    //a[@href="/privacy-policy"]

### Partners Portal
${partnersPortal_button}     //a[@href="/portal/app/partner/main"]

### Customers Portal
${customersPortal_button}        //a[@href="https://www.swiss-as.com/portal/"]

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
     
Scenario 3:Navigate to Customer Support Service
    Given A browser has been opened
    When The user navigates to the Swiss Aviation Software page
    And The user verifies if cookies button is visible
    And The user clicks on the cookies button
    And The user verifies if home page is visible
    And The user verifies if services button is visible
    And The user clicks on the services button
    And The user scrolls element into view
    And The user verifies if customerSupport button is visible
    And The user clicks on the customerSupport button
    And The user goes back to home page

Scenario 4: Navigate to Technical Advisory Service
    Given A browser has been opened
    When The user navigates to the Swiss Aviation Software page
    And The user verifies if cookies button is visible
    And The user clicks on the cookies button
    And The user verifies if home page is visible
    And The user verifies if services button is visible
    And The user clicks on the services button
    And The user scrolls element into view
    And The user verifies if technicalAdvisory button is visible
    And The user clicks on the technicalAdvisory button
    And The user goes back to home page

Scenario 5: Navigate to Project Management Service
    Given A browser has been opened
    When The user navigates to the Swiss Aviation Software page
    And The user verifies if cookies button is visible
    And The user clicks on the cookies button
    And The user verifies if home page is visible
    And The user verifies if services button is visible
    And The user clicks on the services button
    And The user scrolls element into view
    And The user verifies if projectManagement button is visible
    And The user clicks on the projectManagement button
    And The user goes back to home page

Scenario 6: Navigate to Business Consulting Service
    Given A browser has been opened
    When The user navigates to the Swiss Aviation Software page
    And The user verifies if cookies button is visible
    And The user clicks on the cookies button
    And The user verifies if home page is visible
    And The user verifies if services button is visible
    And The user clicks on the services button
    And The user scrolls element into view
    And The user verifies if businessConsulting button is visible
    And The user clicks on the businessConsulting button
    And The user goes back to home page
   
Scenario 7: Navigate to Training Service
    Given A browser has been opened
    When The user navigates to the Swiss Aviation Software page
    And The user verifies if cookies button is visible
    And The user clicks on the cookies button
    And The user verifies if home page is visible
    And The user verifies if services button is visible
    And The user clicks on the services button
    And The user scrolls element into view
    And The user verifies if training button is visible
    And The user clicks on the training button
    And The user goes back to home page


Scenario 7.1: Browse Training Service - classroomTraining
    Given A browser has been opened
    When The user navigates to the Swiss Aviation Software page
    And The user verifies if cookies button is visible
    And The user clicks on the cookies button
    And The user verifies if home page is visible
    And The user verifies if services button is visible
    And The user clicks on the services button
    And The user scrolls element into view
    And The user verifies if training button is visible
    And The user clicks on the training button
    And The user verifies if classroomTraining button is visible
    And The user clicks on the classroomTraining button

Scenario 7.2: Browse Training Service - eLearning
    Given A browser has been opened
    When The user navigates to the Swiss Aviation Software page
    And The user verifies if cookies button is visible
    And The user clicks on the cookies button
    And The user verifies if home page is visible
    And The user verifies if services button is visible
    And The user clicks on the services button
    And The user scrolls element into view
    And The user verifies if training button is visible
    And The user clicks on the training button
    And The user verifies if elearning button is visible
    And The user clicks on the elearning button


Scenario 7.3: Browse Training Service - virtualClassroom
    Given A browser has been opened
    When The user navigates to the Swiss Aviation Software page
    And The user verifies if cookies button is visible
    And The user clicks on the cookies button
    And The user verifies if home page is visible
    And The user verifies if services button is visible
    And The user clicks on the services button
    And The user scrolls element into view
    And The user verifies if training button is visible
    And The user clicks on the training button
    And The user verifies if virtualClassroom button is visible
    And The user clicks on the virtualClassroom button

Scenario 8: Navigate to Data Migration Service
    Given A browser has been opened
    When The user navigates to the Swiss Aviation Software page
    And The user verifies if cookies button is visible
    And The user clicks on the cookies button
    And The user verifies if home page is visible
    And The user verifies if services button is visible
    And The user clicks on the services button
    And The user scrolls element into view
    And The user verifies if dataMigration button is visible
    And The user clicks on the dataMigration button
    And The user goes back to home page


Scenario 9: Navigate to Interfacing Service
    Given A browser has been opened
    When The user navigates to the Swiss Aviation Software page
    And The user verifies if cookies button is visible
    And The user clicks on the cookies button
    And The user verifies if home page is visible
    And The user verifies if services button is visible
    And The user clicks on the services button
    And The user scrolls element into view
    And The user verifies if interfacing button is visible
    And The user clicks on the interfacing button
    And The user goes back to home page

Scenario 10: Navigate to AMOS Application Service
    Given A browser has been opened
    When The user navigates to the Swiss Aviation Software page
    And The user verifies if cookies button is visible
    And The user clicks on the cookies button
    And The user verifies if home page is visible
    And The user verifies if services button is visible
    And The user clicks on the services button
    And The user scrolls element into view
    And The user verifies if amos_application button is visible
    And The user clicks on the amos_application button
    And The user goes back to home page

Scenario 11: Navigate to System Customisation Service
    Given A browser has been opened
    When The user navigates to the Swiss Aviation Software page
    And The user verifies if cookies button is visible
    And The user clicks on the cookies button
    And The user verifies if home page is visible
    And The user verifies if services button is visible
    And The user clicks on the services button
    And The user scrolls element into view
    And The user verifies if systemCustomisation button is visible
    And The user clicks on the systemCustomisation button
    And The user goes back to home page


Scenario 12: Navigate to contacts
    Given A browser has been opened
    When The user navigates to the Swiss Aviation Software page
    And The user verifies if cookies button is visible
    And The user clicks on the cookies button
    And The user verifies if home page is visible
    And The user scrolls element into view
    And The user verifies if contacts button is visible
    And The user clicks on the contacts button 


Scenario 13: Navigate to news and events
    Given A browser has been opened
    When The user navigates to the Swiss Aviation Software page
    And The user verifies if cookies button is visible
    And The user clicks on the cookies button
    And The user verifies if home page is visible
    And The user scrolls element into view
    And The user verifies if newsAndEvents button button is visible
    And The user clicks on the newsAndEvents button 

Scenario 13.1: Browse news and events - News
    Given A browser has been opened
    When The user navigates to the Swiss Aviation Software page
    And The user verifies if cookies button is visible
    And The user clicks on the cookies button
    And The user verifies if home page is visible
    And The user scrolls element into view
    And The user verifies if newsAndEvents button button is visible
    And The user clicks on the newsAndEvents button 
    And The user verifies if news button is visible
    And The user clicks on the news button 

Scenario 13.2: Browse news and events - Events
    Given A browser has been opened
    When The user navigates to the Swiss Aviation Software page
    And The user verifies if cookies button is visible
    And The user clicks on the cookies button
    And The user verifies if home page is visible
    And The user scrolls element into view
    And The user verifies if newsAndEvents button button is visible
    And The user clicks on the newsAndEvents button 
    And The user verifies if events button is visible
    And The user clicks on the events button 

Scenario 13.3: Browse news and events - Media
    Given A browser has been opened
    When The user navigates to the Swiss Aviation Software page
    And The user verifies if cookies button is visible
    And The user clicks on the cookies button
    And The user verifies if home page is visible
    And The user scrolls element into view
    And The user verifies if newsAndEvents button button is visible
    And The user clicks on the newsAndEvents button 
    And The user verifies if media button is visible
    And The user clicks on the media button 

    
Scenario 14: Navigate to linkedin
    Given A browser has been opened
    When The user navigates to the Swiss Aviation Software page
    And The user verifies if cookies button is visible
    And The user clicks on the cookies button
    And The user verifies if home page is visible
    And The user scrolls element into view
    And The user verifies if linkedin button is visible
    And The user clicks on the linkedin button 

Scenario 15: Navigate to facebook
    Given A browser has been opened
    When The user navigates to the Swiss Aviation Software page
    And The user verifies if cookies button is visible
    And The user clicks on the cookies button
    And The user verifies if home page is visible
    And The user scrolls element into view
    And The user verifies if facebook button button is visible
    And The user clicks on the facebook button 

Scenario 16: Navigate to x
    Given A browser has been opened
    When The user navigates to the Swiss Aviation Software page
    And The user verifies if cookies button is visible
    And The user clicks on the cookies button
    And The user verifies if home page is visible
    And The user scrolls element into view
    And The user verifies if x button button is visible
    And The user clicks on the x button 

Scenario 17: Navigate to youtube
    Given A browser has been opened
    When The user navigates to the Swiss Aviation Software page
    And The user verifies if cookies button is visible
    And The user clicks on the cookies button
    And The user verifies if home page is visible
    And The user scrolls element into view
    And The user verifies if youtube button is visible
    And The user clicks on the youtube button 

Scenario 18: Navigate to Privacy
    Given A browser has been opened
    When The user navigates to the Swiss Aviation Software page
    And The user verifies if cookies button is visible
    And The user clicks on the cookies button
    And The user verifies if home page is visible
    And The user scrolls element into view
    And The user verifies if privacy button is visible
    And The user clicks on the privacy button 

Scenario 19: Navigate to Customers
    Given A browser has been opened
    When The user navigates to the Swiss Aviation Software page
    And The user verifies if cookies button is visible
    And The user clicks on the cookies button
    And The user verifies if home page is visible
    And The user scrolls element into view
    And The user verifies if customers button is visible
    And the user clicks on the customers button

Scenario 19.1: Browse through Customers - Customers List
    Given A browser has been opened
    When The user navigates to the Swiss Aviation Software page
    And The user verifies if cookies button is visible
    And The user clicks on the cookies button
    And The user verifies if home page is visible
    And The user scrolls element into view
    And The user verifies if customers button is visible
    And the user clicks on the customers button
    And The user verifies if customerList button is visible
    And the user clicks on the customerList button

Scenario 19.2: Browse through Customers - Testimonials
    Given A browser has been opened
    When The user navigates to the Swiss Aviation Software page
    And The user verifies if cookies button is visible
    And The user clicks on the cookies button
    And The user verifies if home page is visible
    And The user scrolls element into view
    And The user verifies if customers button is visible
    And the user clicks on the customers button
    And The user verifies if testimonials button is visible
    And the user clicks on the testimonials button

Scenario 20: Navigate to Partners Portal
    Given A browser has been opened
    When The user navigates to the Swiss Aviation Software page
    And The user verifies if cookies button is visible
    And The user clicks on the cookies button
    And The user verifies if home page is visible
    And The user scrolls element into view
    And The user verifies if customers button is visible
    And the user clicks on the customers button


Scenario 21: Navigate to Customers Portal
    Given A browser has been opened
    When The user navigates to the Swiss Aviation Software page
    And The user verifies if cookies button is visible
    And The user clicks on the cookies button
    And The user verifies if home page is visible
    And The user scrolls element into view
    And The user verifies if customers button is visible
    And the user clicks on the customers button

Scenario 22: Make API calls
    Given A browser has been opened
    When The user navigates to the Swiss Aviation Software page
    And The user verifies if cookies button is visible
    And The user clicks on the cookies button
    And The user verifies if home page is visible
    And The user makes calls to the API
  



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
    
The user scrolls element into view
    Scroll To   ${string}

The user goes back to home page
    Go Back 

The user makes calls to the API
    Create Session    swiss_as    https://www.swiss-as.com
    ${response}=    POST On Session    swiss_as    /core/modules/statistics/statistics.php
    Should Be Equal As Strings    ${response.status_code}    200


