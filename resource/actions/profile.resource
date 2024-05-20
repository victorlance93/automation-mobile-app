*** Settings ***
Documentation        Ações e elementos da tela de profile

Library        AppiumLibrary

*** Variables ***
${feed_button}        //android.view.ViewGroup[@content-desc="Feed"]
${stats_button}       //android.view.ViewGroup[@content-desc="Stats"]
${info_button}        //android.view.ViewGroup[@content-desc="Info"]
${filter_post}        //android.view.ViewGroup[@content-desc="Filter Post"]
${settings}           //android.view.ViewGroup[@package='world.footbao.footbao.stag' and @class='android.view.ViewGroup' and @resource-id='profile_V2_Header_ButtonSettings']
${menu_burguer}       //android.view.ViewGroup[@package='world.footbao.footbao.stag' and @class='android.view.ViewGroup' and @resource-id='profile_V2_Header_ButtonMenuHamburguer']
${message_button}     //android.view.ViewGroup[@package='world.footbao.footbao.stag' and @class='android.view.ViewGroup' and @resource-id='profile_V2_Header_ButtonMessage']
${notification}       //android.view.ViewGroup[@package='world.footbao.footbao.stag' and @class='android.view.ViewGroup' and @resource-id='profile_V2_Header_ButtonNotifications']
${mgm_button}         //android.view.ViewGroup[@package='world.footbao.footbao.stag' and @class='android.view.ViewGroup' and @resource-id='profile_V2_Header_ButtonShareMgm']

*** Keywords ***

Check buttons on feed 
    Sleep    8
    Wait Until Page Contains Element    xpath=${feed_button}         10
    Wait Until Page Contains Element    xpath=${stats_button}        10
    Wait Until Page Contains Element    xpath=${info_button}         10
    Wait Until Page Contains Element    xpath=${filter_post}         10
    Wait Until Page Contains Element    xpath=${settings}            10
    Wait Until Page Contains Element    xpath=${menu_burguer}        10
    Wait Until Page Contains Element    xpath=${message_button}      10
    Wait Until Page Contains Element    xpath=${feed_button}         10
    Wait Until Page Contains Element    xpath=${notification}        10
    Wait Until Page Contains Element    xpath=${mgm_button}          10

Click on settings
    Wait Until Page Contains Element    xpath=${settings}    30
    Click Element    xpath=${settings}

Click on menu burguer
    Wait Until Page Contains Element    xpath=${menu_burguer}    30
    Click Element    xpath=${menu_burguer}
