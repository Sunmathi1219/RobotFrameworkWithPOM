*** Settings ***
#HomePage.robot
Documentation   Page Objects for Automation Playgroung page testing
Library     SeleniumLibrary

*** Variables ***

${BASE_URL}     https://automationplayground.com/crm/index.html
${USERNAME}     sunmathi@gmail.com
${PASSWORD}     123dlf
${EMAIL}    Dhanu@yahoo.com
${FIRST_NAME}   Dhansekaran
${LAST_NAME}    Manickam
${CITY}     Chennai

*** Keywords ***

Start automation
    [Documentation]     Start automation
    [Tags]      Start
    Open Browser    ${BASE_URL}     chrome
    Maximize Browser Window
    Set Browser Implicit Wait    10s
    Capture Page Screenshot     ../ScreenShots/img_1.png

Sign-in into the credentials
    [Documentation]     Sign-in into the credentials
    [Tags]      Click sign-in link
    Click Link    name=sign-in-link
    Capture Page Screenshot     ../ScreenShots/img_2.png

Add Sign-up credentials
    [Documentation]     Add Sign-up credentials
    [Tags]      Enter username password     
    Input Text    id=email-id      ${USERNAME}
    Input Text    id=password    ${PASSWORD}
    Click Button    id=submit-id
    Capture Page Screenshot     ../ScreenShots/img_3.png

Add a new user
    [Documentation]     Add a new user
    [Tags]      Add new user details
    Click Link    id=new-customer
    Input Text    id=EmailAddress       ${EMAIL}    
    Input Text    id=FirstName    ${FIRST_NAME}
    Input Text    id=LastName       ${LAST_NAME}
    Input Text    id=City    ${CITY}
    Select From List By Value    id=StateOrRegion   AK
    Select Radio Button    gender      male
    Click Button    xpath=//button[@type='submit']
    Capture Page Screenshot     ../ScreenShots/img_4.png

Confirm the new user
    [Documentation]     Confirm the new user
    [Tags]      Confirm user addition
    Wait Until Page Contains    Success! New customer added.
    Capture Page Screenshot     ../ScreenShots/img_5.png

Shutdown automation
   [Documentation]     Shutdown automation
   [Tags]      Shutdown
   Close All Browsers




