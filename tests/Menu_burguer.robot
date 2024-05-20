*** Settings ***
Documentation            Suite de testes da feature de Menu Burguer
Resource       ../resource/Base.resource


Test Setup        Start session
Test Teardown     Finish session

*** Test Cases ***
Check labels available
    Login Success
    Click on profile button
    Click on menu burguer
    Available labels menu burguer

Interaction with the ratings page
    [Tags]   ratings
    Login Success
    Click on profile button
    Click on menu burguer
    Click on button ratings
    Checkpoint ratings Page
    Interaction ratings page 

Interaction with the my loveds page
    [Tags]   loveds 
    Login Success
    Click on profile button
    Click on menu burguer
    Click on button loveds
    Interaction my loveds page 

Interaction with the saved page
    [Tags]   saved 
    Login Success
    Click on profile button
    Click on menu burguer
    Click on button saved
    Checkpoint saved page 
    Interaction saved page 
Interaction with the about footbao page
    [Tags]   about 
    Login Success
    Click on profile button
    Click on menu burguer
    Click on button about footbao
    Checkpoint about footbao page  
    Interaction my about footbao page
Interaction with the faq & help page
    [Tags]   faq 
    Login Success
    Click on profile button
    Click on menu burguer
    Click on button faq & help
    Checkpoint faq and help screen 
    Interaction with on faq screen 
Interaction with the professional account page
    [Tags]   professional 
    Login Success
    Click on profile button
    Click on menu burguer
    Click on button professional account
    Checkpoint professional account screen
    Check types on professional account
User logout confirm
    [Tags]    logout 
    Login Success
    Click on profile button
    Click on menu burguer
    Click on button logout
