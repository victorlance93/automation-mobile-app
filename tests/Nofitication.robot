*** Settings ***
Documentation            Suite de testes da feature de Menu Burguer
Resource       ../resource/Base.resource


Test Setup        Start session
Test Teardown     Finish session

*** Test Cases ***

Check notification table
    Login Success
    Click on profile button
    Click on notification