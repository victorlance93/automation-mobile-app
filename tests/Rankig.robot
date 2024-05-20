*** Settings ***
Documentation        Suite de testes de Ranking

Resource       ../resource/Base.resource

Test Setup        Start session
Test Teardown     Finish session


*** Test Cases ***
Must filter players
    Login Success
    Click on raking button
    Apply filters on top players
