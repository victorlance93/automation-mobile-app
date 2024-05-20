*** Settings ***
Documentation            Suite de testes da feature de Challenge
Resource       ../resource/Base.resource

Test Setup        Start session
Test Teardown     Finish session

*** Test Cases ***
Check tabs of challenge
    Login Success
    Click on challenge button
    Check challenge button