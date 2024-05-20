*** Settings ***
Documentation        Ações e elementos da Navbar do app

Library        AppiumLibrary

*** Variables ***
${home_button}               //android.view.View[@content-desc="Home"]
${post_button}               //android.view.View[@package='world.footbao.footbao.stag' and @class='android.view.View' and @resource-id='tab_new_post']
${challenge_button}          //android.view.View[@content-desc="Challenge"]/android.widget.TextView
${ranking_button}            //android.view.View[@content-desc="Ranking"]
${profile_button}            //android.view.View[@content-desc="Profile"]/android.widget.TextView

*** Keywords ***
Click on profile button 
    Wait Until Page Contains Element    xpath=${profile_button}     30
    Click Element    xpath=${profile_button}
    Sleep    10

Click on post button
    Click Element    xpath=${post_button}
    
Click on raking button
    Click Element    xpath=${ranking_button}
Click on challenge button
    Click Element    xpath=${challenge_button}

Click on home button
    Click Element    xpath=${home_button}