*** Settings ***
Documentation            Suite de testes da feature de Settings
Resource       ../resource/Base.resource


Test Setup        Start session
Test Teardown     Finish session
Library    Telnet

*** Test Cases ***

Checking tabs of settings
    Login Success
    Click on profile button
    Click on settings
    Check settings button
    Click on personal information button

Edit Personal information screen
    [Tags]    personal_information
    Login Success
    Click on profile button
    Click on settings
    Click on personal information button
    Modify Informations personal information screen

Edit Clubs screen
    [Tags]    clubs
    Login Success
    Click on profile button
    Click on settings
    Click on clubs button
    Modify Informations clubs screen

Edit Jersey screen
    [Tags]    jersey 
    Login Success
    Click on profile button
    Click on settings
    Click on jersey button
    Check message screen
    Fill jersey information

Edit sponsor screen
    [Tags]    sponsor 
    Login Success
    Click on profile button
    Click on settings
    Click on sponsor button
    Check messages screen sponsor
    Click button sponsor
    Save Sponsor

Edit technical information screen    
    [Tags]    technical 
    Login Success
    Click on profile button
    Click on settings
    Click on technical information button
    Check text screen technical information
    Fill informations technical information

Edit preferences screen    
    [Tags]    preferences 
    Login Success
    Click on profile button
    Click on settings
    Click on preferences button
    Checkpoint screen preferences
    Select skill do you like
    Scroll preferences screen
    Select positions do you like
    Save changes

Edit language screen    
    [Tags]    language 
    Login Success
    Click on profile button
    Click on settings
    Click on language button
    Check language available

