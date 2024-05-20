*** Settings ***
Documentation        Ações e elementos da tela de login

Library        AppiumLibrary

*** Variables ***
${hand_swipe}    //android.view.ViewGroup[@content-desc="Swipe to watch more videos"]/com.horcrux.svg.SvgView/com.horcrux.svg.GroupView/com.horcrux.svg.PathView

*** Keywords ***
 Onboarding tour
   Wait Until Page Contains    Home     10
   Click Element    xpath=${hand_swipe}
   Sleep    2
    
