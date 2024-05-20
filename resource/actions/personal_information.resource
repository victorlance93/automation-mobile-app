*** Settings ***
Documentation        Ações e elementos da tela de postagem

Library        AppiumLibrary
Library        FakerLibrary
Resource       setting.resource


*** Variables ***
${full_name}         //android.widget.EditText[@package='world.footbao.footbao.stag' and @class='android.widget.EditText' and @resource-id='personal_full_name']
${about_you}         /hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup[2]/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.widget.ScrollView/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup[6]/android.view.ViewGroup[1]/android.view.ViewGroup/android.widget.EditText
${button_confirm}    //android.view.ViewGroup[@content-desc="CONCLUDE"]
${text_country}      //android.widget.TextView[@package='world.footbao.footbao.stag' and @class='android.widget.TextView' and @text='LIVING COUNTRY']

*** Keywords ***

Modify Informations personal information screen
    ${name}       FakerLibrary.Name
    ${text}       FakerLibrary.Text
    
    Wait Until Element Is Visible    xpath=${full_name}    10
    Click Element     xpath=${full_name}
    Clear Text        xpath=${full_name}
    Input Text        xpath=${full_name}    ${name}
    
    Wait Until Element Is Visible    xpath=${about_you}    10
    Click Element     xpath=${about_you}
    Clear Text        xpath=${about_you}
    Input Text        xpath=${about_you}   ${text} 

    Scroll    xpath=${text_country}
    ...    xpath=${full_name}
    Click Element   xpath=${button_confirm}