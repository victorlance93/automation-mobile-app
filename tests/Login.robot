*** Settings ***
Documentation            Suite de testes da feature de Login
Resource       ../resource/Base.resource

Test Setup        Start session
Test Teardown     Finish session

*** Test Cases ***

Login with email and password
    [Tags]    success
    ${data}    Get Json fixture    login 
    Onboarding tour
    Click on profile button
    Click button sign up with phone or email
    Click sign in option
    Signin with email and password  ${data}[account][email]    ${data}[account][password]
    Check sucess login

Login with email in incorrect format
    [Tags]    invalid
    ${data}    Get Json fixture    inv_email 
    Onboarding tour
    Click on profile button
    Click button sign up with phone or email
    Click sign in option
    Signin with email and password  ${data}[account][email]   ${data}[account][password]
    Check alert error card

Login with bad credentials
    [Tags]    invalid
    ${data}    Get Json fixture    inv_pass 
    Onboarding tour
    Click on profile button
    Click button sign up with phone or email
    Click sign in option
    Signin with email and password  ${data}[account][email]   ${data}[account][password]
    Check alert invalid password


    