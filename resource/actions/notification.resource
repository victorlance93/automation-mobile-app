*** Settings ***
Documentation    Ações e elementos da tela de Notificações
Library    AppiumLibrary
Library    Browser

*** Variables ***
${img_user}        //android.widget.ImageView[@resource-id='userImageWithFlag_userImage' and @package='world.footbao.footbao.stag']
${arrow_back}      //android.view.ViewGroup[@resource-id='appBar_leftArrow' and @package='world.footbao.footbao.stag']

*** Keywords ***
Check notification page 
    Wait Until Page Contains    NOTIFICATIONS    10
    Wait Until Page Contains    Ratings          10

Check elements in page
    Wait Until Page Contains Element    xpath=${img_user}    10
    Click                               xpath=${arrow_back}
    Wait Until Page Contains    Posts          10