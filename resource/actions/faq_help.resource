*** Settings ***
Documentation    Ações e elementos da tela de Fqa & Help
Library    AppiumLibrary

*** Variables ***
${question_faq_1}        //android.view.ViewGroup[@content-desc="How to post a video?"]/android.view.ViewGroup/android.widget.TextView
${question_faq_2}        //android.view.ViewGroup[@content-desc="Can any post receive likes?"]/android.view.ViewGroup/android.widget.TextView
${like}                  /hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup[2]/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup[3]
${back}                  //com.horcrux.svg.SvgView[@resource-id="appBar_leftArrow" and @class="com.horcrux.svg.SvgView" and contains(@package, "world.footbao.footbao.stag")]

*** Keywords ***
Checkpoint faq and help screen
    Wait Until Page Contains    Help via contact suport.0It will open your default e-mail app.    10

Interaction with on faq screen 
    Click Element    xpath=${question_faq_1}
    Sleep    1
    Click Element    xpath=${back}
    Click Element    xpath=${question_faq_2}
    Sleep    1
    Click Element    xpath=${back}
    Wait Until Page Contains    Help via contact suport.0It will open your default e-mail app.    10

