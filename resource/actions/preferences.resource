*** Settings ***
Documentation        Ações e elementos da tela de preferences
Library    AppiumLibrary

*** Variables ***
${button_dribbling}        //android.view.ViewGroup[@content-desc="Dribbling"]
${button_acrobatics}       //android.view.ViewGroup[@content-desc="Acrobatics"]
${button_training}         //android.view.ViewGroup[@content-desc="Training"]
${button_shot}             //android.view.ViewGroup[@content-desc="Shot"]
${button_header}           //android.view.ViewGroup[@content-desc="Header"]

${middle_position}        /hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup[2]/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.widget.ScrollView/android.view.ViewGroup/android.view.ViewGroup[3]/android.view.ViewGroup[1]/com.horcrux.svg.SvgView/com.horcrux.svg.GroupView/com.horcrux.svg.CircleView[2]
${defense_position}       /hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup[2]/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.widget.ScrollView/android.view.ViewGroup/android.view.ViewGroup[4]/android.view.ViewGroup[3]/com.horcrux.svg.SvgView/com.horcrux.svg.GroupView/com.horcrux.svg.CircleView[2]

${button_save}            //android.view.ViewGroup[@content-desc="SAVE"]/android.widget.TextView

*** Keywords ***
Checkpoint screen preferences
    Wait Until Page Contains    PREFERENCES    10
    Wait Until Page Contains    So that we can display the best content for you, please let us know your preferences.    10


Select skill do you like
    Click Element    xpath=${button_dribbling}
    Sleep    1
    Click Element    xpath=${button_acrobatics}
    Sleep    1
    Click Element    xpath=${button_training}
    Sleep    1
    Click Element    xpath=${button_shot}
    Sleep    1
    Click Element    xpath=${button_header}

Scroll preferences screen
    Scroll    xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup[2]/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.widget.ScrollView/android.view.ViewGroup/android.view.ViewGroup[13]/android.view.ViewGroup/android.widget.TextView
    ...    xpath=${button_dribbling}
    Sleep    3
    
Select positions do you like    
    Click Element    xpath=${middle_position}
    Sleep    1
    Click Element    xpath=${defense_position}

Save changes
    Click Element    xpath=${button_save}