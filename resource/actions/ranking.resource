*** Settings ***
Documentation        Ações e elementos da tela de Ranking

Resource    ../Base.resource

Library        AppiumLibrary

*** Variables ***
${button_skill_post}    //android.view.ViewGroup[@content-desc="Skills post"]/android.widget.TextView
${button_fan_post}      //android.view.ViewGroup[@content-desc="Fan posts"]/android.widget.TextView
${all_skill}            //android.view.ViewGroup[@content-desc="All skills"]
${skill_shot}           //android.view.ViewGroup[@content-desc="Shot"]
${all_positions}        //android.view.ViewGroup[@content-desc="All positions"]
${offense_position}     //android.view.ViewGroup[@content-desc="All offense positions"]
${all_countries}        //android.view.ViewGroup[@content-desc="All countries"]
${brasil_country}       //android.view.ViewGroup[contains(normalize-space(@content-desc), 'Brazil')]
${all_ages}             //android.view.ViewGroup[@content-desc="All ages"]
${18_age}               //android.view.ViewGroup[@content-desc="18+"]
${all_gender}           //android.view.ViewGroup[@content-desc="All gender"]
${male_gender}          //android.view.ViewGroup[@content-desc="Male"]       
${reset}                //android.view.ViewGroup[@content-desc="Reset to default"]


*** Keywords ***
Apply filters on top players
    Wait Until Page Contains    TOP RANKING    10
    Sleep    10
    Click Element    xpath=${all_skill}
    Wait Until Page Contains Element    xpath=${skill_shot}    10
    Click Element    xpath=${skill_shot}
    Sleep    3
    Click Element    xpath=${all_positions}
    Wait Until Page Contains Element    xpath=${offense_position}    10
    Click Element    xpath=${offense_position}
    Sleep    3
    Click Element    xpath=${all_countries}
    Wait Until Page Contains Element    xpath=${brasil_country}    10
    Click Element    xpath=${brasil_country}
    Sleep    3
    Click Element    xpath=${all_ages}
    Wait Until Page Contains Element    xpath=${18_age}    10
    Click Element    xpath=${18_age}
    Sleep    3
    Click Element    xpath=${all_gender}
    Wait Until Page Contains Element    xpath=${male_gender}    10
    Click Element    xpath=${male_gender}
    Sleep    3
    Click Element    xpath=${reset}





    