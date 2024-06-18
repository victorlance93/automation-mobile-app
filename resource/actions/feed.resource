*** Settings ***
Documentation        Ações e elementos da tela de feed Skill e Fan 

Resource    ../Base.resource

Library        AppiumLibrary


*** Variables ***
${comments}         //android.view.ViewGroup[@package='world.footbao.footbao.stag' and @class='android.view.ViewGroup' and @resource-id='feed_action_comment']
${like}             //android.view.ViewGroup[@package='world.footbao.footbao.stag' and @class='android.view.ViewGroup' and @resource-id='profile_like_heart']
${add_comment}      //android.widget.EditText[@package='world.footbao.footbao.stag' and @resource-id='textInputWithHashtag_mentionInput' and @class='android.widget.EditText']
${post_comment}     //android.view.ViewGroup[@content-desc="Post"]/android.widget.TextView
${modal}            //android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.LinearLayout/android.widget.FrameLayout/android.widget.FrameLayout/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup[3]/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup/android.view.ViewGroup
${follow_button}    //android.view.ViewGroup[@resource-id='userImageWithFlag_follow']
${ratting_7}        //android.view.ViewGroup[@content-desc="7"]
${ratting_9}        //android.view.ViewGroup[@content-desc="9"]
${ratting_10}       //android.view.ViewGroup[@content-desc="10"]

${username_scroll}        //android.widget.TextView[@resource-id='feed_action_user_name']
${for_you_scroll}         //android.view.ViewGroup[@content-desc="FOR YOU"]/android.widget.TextView
${talents_feed}         //android.view.ViewGroup[@content-desc="TALENTS"]/android.widget.TextView




*** Keywords ***
Interact with Feed
    Wait Until Page Contains    FOR YOU     20
    Sleep    3
    Scroll    xpath=${username_scroll}
    ...    xpath=${for_you_scroll}
    Conditional Click like ou rating    ${like}    ${ratting_10}

    Scroll    xpath=${username_scroll}
    ...    xpath=${for_you_scroll}
    Click Element    ${follow_button}
    

    Scroll    xpath=${username_scroll}
    ...    xpath=${for_you_scroll}
    Sleep    2
   Conditional Click like ou rating    ${like}    ${ratting_10}


     Scroll    xpath=${username_scroll}
    ...    xpath=${for_you_scroll}
    Sleep    2
    Conditional Click like ou rating    ${like}    ${ratting_10}
    
     Scroll    xpath=${username_scroll}
    ...    xpath=${for_you_scroll}
    Sleep    2
    Click Element    ${follow_button}
    
    Scroll    xpath=${username_scroll}
    ...    xpath=${for_you_scroll}
    
    Sleep    3
Interact with Feed Talents
    Wait Until Page Contains    TALENTS     20
    Click tab talents
    Sleep    3
    Scroll    xpath=${username_scroll}
    ...    xpath=${for_you_scroll}
    Conditional Click like ou rating    ${like}    ${ratting_10}

    Scroll    xpath=${username_scroll}
    ...    xpath=${for_you_scroll}
    Click Element    ${follow_button}
    

    Scroll    xpath=${username_scroll}
    ...    xpath=${for_you_scroll}
    Sleep    2
   Conditional Click like ou rating    ${like}    ${ratting_10}


     Scroll    xpath=${username_scroll}
    ...    xpath=${for_you_scroll}
    Sleep    2
    Conditional Click like ou rating    ${like}    ${ratting_10}
    
     Scroll    xpath=${username_scroll}
    ...    xpath=${for_you_scroll}
    Sleep    2
    Click Element    ${follow_button}
    
    Scroll    xpath=${username_scroll}
    ...    xpath=${for_you_scroll}
    
    Sleep    3

Interact with Feed with Open App
    Sleep    5
    Wait Until Page Contains    FOR YOU     20
    Scroll    xpath=${username_scroll}
    ...    xpath=${for_you_scroll}  
    
    Scroll    xpath=${username_scroll}
    ...    xpath=${for_you_scroll}
    
    Scroll    xpath=${username_scroll}
    ...    xpath=${for_you_scroll}
    
    Scroll    xpath=${username_scroll}
    ...    xpath=${for_you_scroll}
    
    Scroll    xpath=${username_scroll}
    ...    xpath=${for_you_scroll}
    
    Sleep    5


Conditional Click like ou rating 
     [Arguments]    ${element_1}    ${element_2}
    ${element_1_present}=    Run Keyword And Return Status    Page Should Contain Element    ${element_1}
    Run Keyword If    ${element_1_present}    Click Element    ${element_1}
    ...    ELSE    Click Element    ${element_2}

Click tab talents
    Click Element    ${talents_feed}