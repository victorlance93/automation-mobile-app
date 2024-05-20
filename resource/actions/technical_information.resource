*** Settings ***
Documentation        Ações e elementos da tela de technical information

Library        AppiumLibrary
Library        FakerLibrary

*** Variables ***
${height}         //android.widget.EditText[@package='world.footbao.footbao.stag' and @class='android.widget.EditText' and @resource-id='technical_your_height']
${weigth}         //android.widget.EditText[@package='world.footbao.footbao.stag' and @class='android.widget.EditText' and @resource-id='technical_your_weight']
${100m}           //android.widget.EditText[@package='world.footbao.footbao.stag' and @class='android.widget.EditText' and @resource-id='technical_many_sec']
${button_save}    //android.view.ViewGroup[@content-desc="SAVE"]/android.widget.TextView

*** Keywords ***
Check text screen technical information
    Wait Until Page Contains    TECHNICAL INFORMATION    10
    Wait Until Page Contains    Your personal characteristics.    10

Fill informations technical information
    ${fill_height}    FakerLibrary.Numerify
    ${fill_weigth}    FakerLibrary.Numerify
    ${fill_100m}      FakerLibrary.Numerify


    Click Element    xpath=${height}
    Clear Text      xpath=${height}
    Input Text       xpath=${height}    ${fill_height}

    Sleep    1

    Click Element    xpath=${weigth}
    Clear Text       xpath=${weigth}
    Input Text       xpath=${weigth}    ${fill_weigth}

    Sleep    1

    Click Element    xpath=${100m}
    Clear Text      xpath=${100m}
    Input Text       xpath=${100m}    ${fill_100m}

    Click Element    xpath=${button_save}

    