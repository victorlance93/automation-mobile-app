*** Settings ***
Documentation        Ações e elementos da tela de jersey 

Library        AppiumLibrary
Library        FakerLibrary

*** Variables ***
${jersey_number}        /hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup[2]/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.widget.ScrollView/android.view.ViewGroup/android.view.ViewGroup[3]/android.view.ViewGroup[1]/android.widget.EditText
${player_name}          /hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup[2]/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.widget.ScrollView/android.view.ViewGroup/android.view.ViewGroup[2]/android.view.ViewGroup[1]/android.widget.EditText
${button_save}          //android.view.ViewGroup[@content-desc="SAVE"]/android.widget.TextView
*** Keywords ***
Check message screen
    Wait Until Page Contains    What is the name and the number of your shirt?    10
    Wait Until Page Contains    Even if you don't have an official shirt, you can put the one of your dreams.    10


Fill jersey information
    ${name}       FakerLibrary.Name
    ${number}     FakerLibrary.Numerify
    Wait Until Element Is Visible    xpath=${player_name}    10
    Click Element    xpath=${player_name}
    Clear Text    xpath=${player_name}
    Input Text    xpath=${player_name}    ${name}

    Wait Until Element Is Visible    xpath=${jersey_number}    10
    Click Element    xpath=${jersey_number}
    Clear Text    xpath=${jersey_number}
    Input Text    xpath=${jersey_number}    ${number}

    Click Element    ${button_save}