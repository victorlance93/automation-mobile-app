*** Settings ***
Documentation    Ações e elementos da tela de logout
Library    AppiumLibrary

*** Variables ***
${confirm_logout}        //android.view.ViewGroup[@content-desc="LOGOUT"]/android.widget.TextView

*** Keywords ***
Click confirm logout
    Click Element    xpath=${confirm_logout}