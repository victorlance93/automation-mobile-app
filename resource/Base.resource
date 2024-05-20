*** Settings ***
Documentation            Arquivo principal do projeto de testes automatizados para Mobile

Library        AppiumLibrary
Library        JSONLibrary

Resource    ./actions/login.resource
Resource    ./actions/onboard.resource
Resource    ./actions/post.resource
Resource    ./actions/feed.resource
Resource    ./actions/clubs.resource
Resource    ./actions/ranking.resource
Resource    ./actions/challenge.resource
Resource    ./actions/setting.resource
Resource    ./actions/profile.resource
Resource    ./actions/language.resource
Resource    ./actions/jersey.resource
Resource    ./actions/sponsor.resource
Resource    ./actions/personal_information.resource
Resource    ./actions/technical_information.resource
Resource    ./actions/preferences.resource
Resource    ./actions/components/popup_signup.resource
Resource    ./actions/components/navbar.resource
Resource    ./actions/components/alert_card.resource
Resource    ./actions/menu_burguer.resource
Resource    ./actions/ratings.resource
Resource    ./actions/my_loveds.resource
Resource    ./actions/saved.resource
Resource    ./actions/about_footbao.resource
Resource    ./actions/faq_help.resource
Resource    ./actions/professional_account.resource
Resource    ./actions/logout.resource
*** Keywords ***

Start session
    Open Application    http://localhost:4723
    ...            platformName=Android
    ...            automationName=UIAutomator2
    ...            deviceName=Emulator
    ...            udid=emulator-5554
    ...            app=${EXECDIR}/app/app-stag-release.apk
    ...            autoGrantPermissions=true
    ...            unicodeKeyboard=true   # Desativa o teclado virtual e usa o método de entrada de texto do Android
    ...            resetKeyboard=true      # Reinicia o estado do teclado após a execução do teste

Finish session
    Capture Page Screenshot
    Close Application

Get Json fixture
    [Arguments]        ${scenario}

    ${data}    Load Json From File
    ...        /Users/victorlance93/Documents/footbao/automation-mobile-footbao/resource/fixtures/data.json
    ...        encoding=utf-8
    
    [Return]    ${data}[${scenario}]

Login Success
     ${data}    Get Json fixture    login 
    Onboarding tour
    Click on profile button
    Click button sign up with phone or email
    Click sign in option
    Signin with email and password  ${data}[account][email]    ${data}[account][password]
    Check sucess login