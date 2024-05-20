*** Settings ***
Documentation        Ações e elementos da tela de settings

Library        AppiumLibrary
Library        FakerLibrary 

*** Variables ***
${personal_information}            //android.view.ViewGroup[@content-desc="Personal Informations"]
${clubs}                           //android.view.ViewGroup[@content-desc="Clubs"]
${jersey}                          //android.view.ViewGroup[@content-desc="Jersey"]
${sponsor}                         //android.view.ViewGroup[@content-desc="Sponsor"]
${technical_information}           //android.view.ViewGroup[@content-desc="Technical Information"]
${preferences}                     //android.view.ViewGroup[@content-desc="Preferences"]
${phone_number}                    //android.view.ViewGroup[@content-desc="Phone Number"]
${emails}                          //android.view.ViewGroup[@content-desc="Emails"]
${language}                        //android.view.ViewGroup[@content-desc="Language"]

*** Keywords ***
Check settings button
    Wait Until Page Contains Element    xpath=${personal_information}        30
    Wait Until Page Contains Element    xpath=${clubs}                       10
    Wait Until Page Contains Element    xpath=${jersey}                      10
    Wait Until Page Contains Element    xpath=${sponsor}                     10
    Wait Until Page Contains Element    xpath=${technical_information}       10
    Wait Until Page Contains Element    xpath=${preferences}                 10
    Wait Until Page Contains Element    xpath=${phone_number}                10
    Wait Until Page Contains Element    xpath=${emails}                      10
    Wait Until Page Contains Element    xpath=${language}                    10       


Click on personal information button
    Wait Until Page Contains Element    xpath=${personal_information}        10
    Click Element                       xpath=${personal_information}

Click on clubs button
    Wait Until Page Contains Element    xpath=${clubs}        10
    Click Element                       xpath=${clubs}

Click on jersey button
    Wait Until Page Contains Element    xpath=${jersey}    10
    Click Element                       xpath=${jersey}            

Click on sponsor button
    Wait Until Page Contains Element    xpath=${sponsor}    10
    Click Element                       xpath=${sponsor}        

Click on technical information button
    Wait Until Page Contains Element    xpath=${technical_information}    10
    Click Element                       xpath=${technical_information}  

Click on preferences button
    Wait Until Page Contains Element    xpath=${preferences}    10
    Click Element                       xpath=${preferences}  

Click on language button
    Wait Until Page Contains Element    xpath=${language}    10
    Click Element                       xpath=${language}  