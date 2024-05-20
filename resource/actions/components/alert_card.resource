*** Settings ***
Documentation        Ações e elementos da Navbar do app

Library        AppiumLibrary

*** Keywords ***
Check alert error card
    Wait Until Element Is Visible    xpath=//android.widget.TextView[@package='world.footbao.footbao.stag' and @class='android.widget.TextView' and @text='Make sure you typed your e-mail correctly.' and @resource-id='alertCardTitle']

Check alert invalid password
    Wait Until Element Is Visible    xpath=//android.widget.TextView[@package='world.footbao.footbao.stag' and @class='android.widget.TextView' and @text='The password is invalid.' and @resource-id='alertCardTitle']
