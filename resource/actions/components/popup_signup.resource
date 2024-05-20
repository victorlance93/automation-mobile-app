*** Settings ***
Documentation        Ações e elementos do Popup de login

Library        AppiumLibrary

*** Variables ***
${button_login_phone}    //android.view.ViewGroup[@content-desc="Sign up with phone number"]/android.widget.TextView
*** Keywords ***
Click button sign up with phone or email
    Sleep    2
    Click Element    xpath=${button_login_phone}
    