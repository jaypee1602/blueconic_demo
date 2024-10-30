*** Settings ***
Library    Browser

*** Variables ***
${URL}                       http://localhost:1337/
${BROWSER}                   chromium

### Homepage
${home_page}                section.banner
${conference_button}         //*[@id="navbarSupportedContent"]//*[contains(text(),'Conference')]

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



*** Keywords ***
A browser has been opened
    New Browser    ${BROWSER}    headless=False    slowMo=0:00:2

The user navigates to the lobotics page    
    New Page    ${URL}

The user clicks on the ${string} button
    Click   ${${string}_button}

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
    