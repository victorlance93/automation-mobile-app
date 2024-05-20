*** Settings ***
Documentation    Ações e elementos da tela de Ratings
Library    AppiumLibrary

*** Variables ***
${received}        //android.view.ViewGroup[@content-desc="RECEIVED"]/android.widget.TextView
${given}           //android.view.ViewGroup[@content-desc="GIVEN"]/android.widget.TextView
${search}          //android.widget.EditText[@text="Search" and @class="android.widget.EditText" and contains(@package, "world.footbao.footbao.stag")]
 
*** Keywords ***
Checkpoint ratings Page
    Wait Until Page Contains    RATINGS    10

Interaction ratings page 
    Click Element     xpath=${given}
    Sleep    2
    Click Element     xpath=${received}
    Sleep    2
    Click Element     xpath=${search}
    Input Text        xpath=${search}    footbao
    
   