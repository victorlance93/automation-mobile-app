*** Settings ***
Documentation    Ações e elementos da tela de Menu Burguer
Library    AppiumLibrary

*** Variables ***
${share_my_profile}        //android.view.ViewGroup[@content-desc="Share my profile"]/android.widget.TextView
${ratings}                 //android.view.ViewGroup[@content-desc="Ratings"]/android.widget.TextView
${loveds}                  //android.view.ViewGroup[@content-desc="Loveds"]/android.widget.TextView
${saved}                   //android.view.ViewGroup[@content-desc="Saved"]/android.widget.TextView
${about_footbao}           //android.view.ViewGroup[@content-desc="About footbao"]/android.widget.TextView
${faq_help}                //android.view.ViewGroup[@content-desc="FAQ & Help"]/android.widget.TextView
${professional_account}    //android.view.ViewGroup[@content-desc="Professional account"]/android.widget.TextView
${logout}                  //android.view.ViewGroup[@content-desc="Logout"]/android.widget.TextView          
*** Keywords ***
Available labels menu burguer
    Wait Until Page Contains Element    xpath=${share_my_profile}        10
    Wait Until Page Contains Element    xpath=${ratings}                 10
    Wait Until Page Contains Element    xpath=${loveds}                  10
    Wait Until Page Contains Element    xpath=${saved}                   10
    Wait Until Page Contains Element    xpath=${about_footbao}           10
    Wait Until Page Contains Element    xpath=${faq_help}                10
    Wait Until Page Contains Element    xpath=${professional_account}    10
    Wait Until Page Contains Element    xpath=${logout}                  10

Click on button ratings
    Wait Until Page Contains Element    xpath=${ratings}                 10
    Click Element    xpath=${ratings}
Click on button loveds
    Wait Until Page Contains Element    xpath=${loveds}                 10
    Click Element    xpath=${loveds}
Click on button saved
    Wait Until Page Contains Element    xpath=${saved}                 10
    Click Element    xpath=${saved}
Click on button about footbao
    Wait Until Page Contains Element    xpath=${about_footbao}                 10
    Click Element    xpath=${about_footbao}
Click on button faq & help
    Wait Until Page Contains Element    xpath=${faq_help}                 10
    Click Element    xpath=${faq_help}
Click on button professional account
    Wait Until Page Contains Element    xpath=${professional_account}                 10
    Click Element    xpath=${professional_account}
Click on button logout
    Wait Until Page Contains Element    xpath=${logout}                 10
    Click Element    xpath=${logout}

