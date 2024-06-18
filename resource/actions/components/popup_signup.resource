*** Settings ***
Documentation        Ações e elementos do Popup de login

Library        AppiumLibrary

*** Variables ***
${button_login_phone}    //android.view.ViewGroup[@content-desc="Start with phone and email"]/android.widget.TextView
*** Keywords ***
Click button sign up with phone or email
    Sleep    2
    Click Element    xpath=${button_login_phone}
    