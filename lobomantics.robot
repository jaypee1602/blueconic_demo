*** Settings ***
Library    Browser

*** Variables ***
${URL}                       https://www.swiss-as.com/
${BROWSER}                   chromium

### Homepage
${home_page}                section.banner
${conference_button}          //*[@id="navbarSupportedContent"]//*[contains(text(),'Conference')]
${accept_cookies_button}      //*[@id="popup-buttons"]/button[1]
${contacts_button}            //a[@href="/contact" and @data-drupal-link-system-path="node/76"]
${customer_portal_button}     //*[@id="site-navigation"]/div[2]/ul/li[1]/a
${partner_portal_button}      /html/body/div[1]/div/div[2]/div[1]/header/nav/div[2]/ul/li[3]/a
${search_field}              //label[@class="site-search-label" and @for="site-search"
${services_button}           //a[@href="/services" and @data-drupal-link-system-path="node/62"]
${news_events_button}       //a[@href="/news-events" and @data-drupal-link-system-path="node/304"]
${customers_button}         //a[@href="/customers" and @data-drupal-link-system-path="node/199"]
${about_us_button}          //a[@href="/about" and @data-drupal-link-system-path="node/38"]




### Conference page
${sessions_button}           //a[@href="/conference/sessions"]   
${speakers_button}           //a[@href="/conference/speakers"]

### Sessions page
${sessions_page}             section > div > div:nth-child(1) > a
${create_button}             //a[@href="/conference/sessions/new"]  

### New session page
${create_page}               //*[contains(text(),'Submit a Session!')]  
${title}                     id=inputTitle
${description}               id=inputDescription
${day}                       id=inputDay
${level}                     id=inputLevel       
${submit_button}             .btn-primary   
${confirmation_page}         //*[contains(text(),'Session Submitted Successfully!')]

*** Test Cases ***
Scenario 1: Filter session by day
    Given A browser has been opened
    When The user navigates to the lobotics page
    And The user verifies if home page is visible
    And The user clicks on the conference button 
    And The user verifies if speakers button is visible
    And The user verifies if sessions button is visible
    And The user clicks on the sessions button
    And The user verifies if sessions page is visible
    And The user filters per day on Wednesday
    Then The Wednesday sessions are visible
    And The Friday sessions are hidden
    And The user filters per day on Friday
    And The Friday sessions are visible
    And The Wednesday sessions are hidden

Scenario 2: Create a session
    Given A browser has been opened
    When The user navigates to the lobotics page    
    And The user verifies if home page is visible
    And The user clicks on the conference button 
    And The user verifies if speakers button is visible
    And The user verifies if sessions button is visible
    And The user clicks on the sessions button
    And The user verifies if sessions page is visible
    And The user clicks on the create button
    And The user verifies if create page is visible
    And The user fills in all the required fields
    And The user clicks on the submit button
    Then The user verifies if confirmation page is visible

Scenario 3: Accept Cookies
    Given A browser has been opened
    When The user navigates to the lobotics page
    And The user accepts cookies


Scenario 4: Click on Contacts
    Given A browser has been opened
    When The user navigates to the lobotics page
    And The user accepts cookies
    And The user clicks on Contacts 
    Close Browser

Scenario 5: Open Browser and Click Customer Portal
    Given A browser has been opened 
    When The user navigates to the lobotics page
    And The user accepts cookies
    And The user clicks on the Customer Portal

Scenario 6: Open Browser and Click Partner Portal
    Given A browser has been opened 
    When The user navigates to the lobotics page
    And The user accepts cookies
    And The user clicks on the Partner Portal

Scenario 7: Open Browser and Click Partner Portal
    Given A browser has been opened 
    When The user navigates to the lobotics page
    And The user accepts cookies
    And The user searches for info

Scenario 8: Open Browser and Click Services
    Given A browser has been opened 
    When The user navigates to the lobotics page
    And The user accepts cookies
    And The user clicks on services


Scenario 9: Open Browser and Click News and Events
    Given A browser has been opened 
    When The user navigates to the lobotics page
    And The user accepts cookies
    And The user clicks on News ad Events

Scenario 9: Open Browser and Click News and Events
    Given A browser has been opened 
    When The user navigates to the lobotics page
    And The user accepts cookies
    And The user clicks on News ad Events

Scenario 10: Open Browser and Click customers
    Given A browser has been opened 
    When The user navigates to the lobotics page
    And The user accepts cookies
    And The user clicks on Customers

Scenario 11: Open Browser and Click About us
    Given A browser has been opened 
    When The user navigates to the lobotics page
    And The user accepts cookies
    And The user clicks on About us




*** Keywords ***
A browser has been opened
    New Browser    ${BROWSER}    headless=False    slowMo=0:00:2

The user navigates to the lobotics page    
    New Page    ${URL}

The user clicks on the ${string} button
    Click   ${${string}_button}


The user accepts cookies
    Wait For Elements State    ${accept_cookies_button}    visible
    Click                      ${accept_cookies_button}


The user filters per day on ${day}
    Click    //*[@id="wrapper"]/section/div/div[2]//*[contains(text(),'${day}')]
    
The ${day} sessions are ${state}
    Log    ${day}
    ${count}    Get Element Count    //*[contains(text(),'${day}')]
    Log    The number of sessions for ${day} are ${count}
    IF    "${state}" == "visible"
        Should Not Be Equal As Numbers    ${count}    1
    ELSE
        Should Be Equal As Numbers    ${count}    1
    END

The user verifies if ${string} ${second} is ${state}
    IF    "${second}" == "page"
        Wait For Elements State    ${${string}_page}    ${state}
    ELSE
        Wait For Elements State    ${${string}_button}    ${state}
    END

The user fills in all the required fields
    Fill Text    ${title}    Test title
    Fill Text    ${description}    Can I please work at Blueconic? :)
    Fill Text    ${day}    Today
    Fill Text    ${level}    Senior  


  
    

The user clicks on contacts
    Click    ${contacts_button}

The user clicks on the Customer Portal
    Click    ${customer_portal_button}

The user clicks on the Partner Portal
    Click   ${partner_portal_button}

The user searches for info
    Click   ${search_field}
       Fill Text     ${search_field}   ...

The user clicks on services
    Click    ${services_button}

The user clicks on News ad Events
    Click ${news_events_button}

The user clicks on Customers
    Click ${customers_button}

The user clicks on About us
    Click    ${about_us_button}