*** Settings ***
Documentation        Ações e elementos da tela de login

Library        AppiumLibrary

*** Variables ***
${input_email}        //android.widget.EditText[@resource-id='auth_sign_email_input' and @package='world.footbao.footbao.stag']
${input_password}     //android.widget.EditText[@resource-id='auth_sign_password_input' and @package='world.footbao.footbao.stag']
${button_signin}      (//android.view.ViewGroup[@content-desc="SIGN IN"])[2]
*** Keywords ***
Signin with email and password
    [Arguments]        ${email}    ${password}
    Wait Until Page Contains    You can use your phone number or your e-mail.
    Click Element    xpath=${input_email} 
    Input Text     xpath=${input_email}     ${email}
    
    Click Element    xpath=${input_password}
    Input Text      xpath=${input_password}    ${password}

    Click Element    xpath=${button_signin}

Check sucess login
     Wait Until Page Contains    Home           20
     Wait Until Page Contains    Profile        20

Click sign in option
    Sleep    2
    Click Element    xpath=(//android.view.ViewGroup[@content-desc="SIGN IN"])[1]/android.view.ViewGroup/android.view.ViewGroup/android.widget.TextView
    Sleep    2

Check modal signup 
     Wait Until Page Contains    Create your account now to interact with the most passionate football community! It's quick and easy!    10
     Click Element    xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup[2]/android.view.ViewGroup[2]
