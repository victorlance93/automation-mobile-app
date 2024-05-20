*** Settings ***
Documentation        Ações e elementos da tela de clubs 

Library        AppiumLibrary
Library        FakerLibrary

*** Variables ***
${club_name}        /hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup[2]/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.widget.ScrollView/android.view.ViewGroup/android.view.ViewGroup[6]
${idol_name}        /hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup[2]/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.widget.ScrollView/android.view.ViewGroup/android.view.ViewGroup[7]
${text_current}     //android.widget.TextView[@text='CURRENT CLUB']
${button_save}      //android.view.ViewGroup[@content-desc="SAVE"]/android.widget.TextView
${current_club}     //android.widget.TextView[@package='world.footbao.footbao.stag' and @class='android.widget.TextView' and @text='CURRENT CLUB']
${club_history}     //android.widget.TextView[@package='world.footbao.footbao.stag' and @class='android.widget.TextView' and @text='CLUB HISTORY']


*** Keywords ***

Modify Informations clubs screen   
    ${name}       FakerLibrary.Name
    ${club}       FakerLibrary.Company     
    Wait Until Page Contains    Let's let the world know some professional information from you.    10
    
    Wait Until Page Contains    CLUB HISTORY    10
    Wait Until Page Contains    CURRENT CLUB    10

    Scroll    xpath=${club_name}
    ...       xpath=${current_club}
    
    Sleep    5
    Click Element     xpath=${club_name}
    Sleep    2
    Clear Text    xpath=${club_name}
   
    # Click Element   xpath=${button_save}