*** Settings ***
Documentation            Suite de testes da feature de Feed
Resource       ../resource/Base.resource

Test Setup        Start session
Test Teardown     Finish session

*** Test Cases ***
Interact with Feed
    [Tags]    for_you
    Login Success
    Interact with Feed

Interact with Talent feed    
    [Tags]    talento
    Login Success
    Interact with Feed Talents

