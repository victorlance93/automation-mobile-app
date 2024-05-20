*** Settings ***
Documentation    Ações e elementos da tela de Saved
Library    AppiumLibrary

*** Variables ***
${search}          //android.widget.EditText[@text="Search" and @class="android.widget.EditText" and contains(@package, "world.footbao.footbao.stag")]
${all_post}        //android.view.ViewGroup[@content-desc="All posts"]/android.widget.TextView
${skill_post}      //android.view.ViewGroup[@content-desc="Skills posts"]/android.widget.TextView
${fan_post}        //android.view.ViewGroup[@content-desc="Fans posts"]/android.widget.TextView
*** Keywords ***
Checkpoint saved page 
    Wait Until Page Contains    SAVED    10

Interaction saved page 
    Click Element    xpath=${skill_post}
    Sleep    1
    Click Element    xpath=${fan_post}
    Sleep    1
    Click Element    xpath=${all_post}
    Sleep    2
    Click Element    xpath=${search}
    Input Text       xpath=${search}    footbao
    Sleep    2