*** Settings ***
Documentation    Ações e elementos da tela de About footbao
Library    AppiumLibrary

*** Variables ***
${about}        //android.view.ViewGroup[@content-desc="ABOUT"]/android.widget.TextView
${terms}        //android.view.ViewGroup[@content-desc="PRIVACY & TERMS"]/android.widget.TextView

*** Keywords ***
Checkpoint about footbao page 
    Wait Until Page Contains    footbao website        10
    Wait Until Page Contains    Delete your account    10

Interaction my about footbao page
    Click Element    xpath=${terms}
    Wait Until Page Contains    Terms of use        10
    Wait Until Page Contains    Privacy Policy      10
    Click Element    xpath=${about}