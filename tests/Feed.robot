*** Settings ***
Documentation            Suite de testes da feature de Feed
Resource       ../resource/Base.resource

Test Setup        Start session
Test Teardown     Finish session

*** Test Cases ***
Interact with Feed
    Login Success
    Interact with Feed


