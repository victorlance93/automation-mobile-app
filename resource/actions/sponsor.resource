*** Settings ***
Documentation        Ações e elementos da tela de sponsor

Library        AppiumLibrary

*** Variables ***
${button_save}        //android.view.ViewGroup[@content-desc="SAVE"]/android.widget.TextView

*** Keywords ***
Check messages screen sponsor
    Wait Until Page Contains    Do you want to get a sponsor in footbao?
    Wait Until Page Contains    Do you already have your own sponsor?
    
Click button sponsor
   ${botao_yes_clicado}    Run Keyword And Return Status    Page Should Contain Element    xpath=(//android.view.ViewGroup[@content-desc="Yes"])[1]/descendant::android.view.ViewGroup
    ${botao_no_clicado}    Run Keyword And Return Status    Page Should Contain Element    xpath=(//android.view.ViewGroup[@content-desc="No"])[1]/descendant::android.view.ViewGroup
    
    Run Keyword If    '${botao_no_clicado}' == 'True'     Click Element    xpath=(//android.view.ViewGroup[@content-desc="Yes"])[1]/android.view.ViewGroup
    ...    ELSE IF    '${botao_yes_clicado}' == 'True'    Click Element    xpath=(//android.view.ViewGroup[@content-desc="No"])[1]/android.view.ViewGroup
    

    Wait Until Element Is Visible    xpath=${button_save}    10
Save Sponsor 
    Click Element    xpath=${button_save}