*** Settings ***
Documentation            Suite de testes da feature de Postagem no app 
Resource       ../resource/Base.resource

Test Setup        Start session
Test Teardown     Finish session

*** Test Cases ***

Should make a Fan post
    [Tags]     fan   
    Login Success
    Click on post button
    Fan post should make
    Click popup experience
    Check Post success Fan

Should make a Skill post
    [Tags]     skill 
    Login Success
    Click on post button
    Skill post should make
    Click popup experience
    Check post success skill
