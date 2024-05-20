*** Settings ***
Documentation            Suite de testes da feature de Open App
Resource       ../resource/Base.resource

Test Setup        Start session
Test Teardown     Finish session

*** Test Cases ***
Check Feed Open App
    Onboarding tour
    Interact with Feed with Open App
    Check modal signup
Check Raking Open App
    Onboarding tour
    Click on raking button
    Apply filters on top players

Check Post not possible in Open App
    Onboarding tour
    Click on post button
    Check modal signup