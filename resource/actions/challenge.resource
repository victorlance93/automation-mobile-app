*** Settings ***
Documentation        Ações e elementos da tela de challenge 

Library        AppiumLibrary

*** Variables ***
${open_challenge}    //android.view.ViewGroup[@content-desc="Open challenges"]
${joined}            //android.view.ViewGroup[@content-desc="Joined"]
${closed}            //android.view.ViewGroup[@content-desc="Closed"]

*** Keywords ***
Check challenge button
    Wait Until Page Contains    CHALLENGES    10
    Click Element    xpath=${open_challenge}
    Wait Until Page Contains Element    xpath=${open_challenge}    10
    Click Element    xpath=${joined}
    Sleep    2
    Click Element    xpath=${closed}
    # Click Element    xpath=${upcoming}
    # Swipe    990    414    600    472    1000
    
    
    
