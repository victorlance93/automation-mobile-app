*** Settings ***
Documentation    Ações e elementos da tela de Loved
Library    AppiumLibrary

*** Variables ***
${search}        //android.widget.EditText[@text="Search" and @class="android.widget.EditText" and contains(@package, "world.footbao.footbao.stag")]
*** Keywords ***
Interaction my loveds page 
    Wait Until Page Contains    MY LOVEDS    10
    Click Element     xpath=${search}
    Input Text        xpath=${search}    footbao
    Sleep    2