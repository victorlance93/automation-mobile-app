*** Settings ***
Documentation        Ações e elementos da tela de postagem

Library        AppiumLibrary

*** Variables ***

${video_library}        //android.view.ViewGroup[@content-desc="Video Library"]
${video_select}         //android.widget.ImageView[@package='com.google.android.providers.media.module' and @class='android.widget.ImageView' and @resource-id='com.google.android.providers.media.module:id/icon_thumbnail']
${edit_video}           //android.view.ViewGroup[@content-desc="Edit with original audio, You can't change that later"]
${next_page}            //android.widget.ImageView[@package='world.footbao.footbao.stag' and @class='android.widget.ImageView' and @resource-id='world.footbao.footbao.stag:id/acceptButton']
${write_description}    //android.widget.EditText[@package='world.footbao.footbao.stag' and @class='android.widget.EditText' and @text='Write a caption...' and @resource-id='textInputWithHashtag_mentionInput']
${button_next_edit}     //android.view.ViewGroup[@content-desc="NEXT"]
${select_fan_post}      //android.view.ViewGroup[@content-desc="Fan post, It’s a video of someone else or of football content."]
${select_skill_post}    //android.view.ViewGroup[@content-desc="Skills post, I’m showing my football skills on this video."] 
${button_post_video}    //android.view.ViewGroup[@content-desc="POST"]
${confirm_post}         //android.view.ViewGroup[@content-desc="CONFIRM"]
${dribbling_skill}      //*[contains(@text, 'Dribbling')]
${acrobatics_skill}     //*[contains(@text, 'Acrobatics')]
*** Keywords ***

Fan post should make
    Sleep    5
    Click Element    xpath=${video_library}
    Sleep    5
    Click Element    xpath=${video_select}
    Sleep    5
    Click Element    xpath=${edit_video}
    Sleep    5
    Click Element    xpath=${next_page}
    Sleep    3
    Input Text       xpath=${write_description}    Automation Fan Post!
    Sleep    5
    Click Element    xpath=${button_next_edit}
    Sleep    5
    Click Element    xpath=${select_fan_post}
    Sleep    5
    Click Element    xpath=${button_post_video}
    Sleep    5
    Click Element    xpath=${confirm_post}
    Sleep    15

Skill post should make
    Sleep    5
    Click Element    xpath=${video_library}
    Sleep    5
    Click Element    xpath=${video_select}
    Sleep    5
    Click Element    xpath=${edit_video}
    Sleep    5
    Click Element    xpath=${next_page}
    Sleep    3
    Input Text       xpath=${write_description}    Automation Skill Post!
    Sleep    5
    Click Element    xpath=${button_next_edit}
    Sleep    5
    Click Element    xpath=${select_skill_post}
    Sleep    5
    Click Element    xpath=${button_next_edit}
    Sleep    5
    Click Element    xpath=${dribbling_skill}
    Sleep    5
    Click Element    xpath=${acrobatics_skill}
    Sleep    5
    Click Element    xpath=${button_post_video}
    Sleep    5
    Click Element    xpath=${confirm_post}
    Sleep    15
    

Check Post success Skill
     Wait Until Page Contains    Home        20

Check Post success Fan
     Wait Until Page Contains    Home        20

Click popup experience
    Wait Until Element Is Visible    xpath=//android.view.ViewGroup[@content-desc="Not now"]/android.widget.TextView    15
    Sleep    3
    Click Element    xpath=//android.view.ViewGroup[@content-desc="Not now"]/android.widget.TextView

    