*** Settings ***
Documentation    Ações e elementos da tela de professional account
Library    AppiumLibrary

*** Variables ***
${media}        //android.view.ViewGroup[@content-desc="Media, TV, Press, Radio, News, Social, etc."]
${clubs}        //android.view.ViewGroup[@content-desc="Clubs, Pros, Amateurs, Schools, etc."]
${brands}       //android.view.ViewGroup[@content-desc="Brands, Shoes, Clothes, Accessories, etc."]

*** Keywords ***
Checkpoint professional account screen
    Wait Until Page Contains    Bring your business to the biggest social network in the world of soccer!    10
    Wait Until Page Contains    PROFESSIONAL ACCOUNT    10

Check types on professional account 
    Wait Until Page Contains    Media     10
    Wait Until Page Contains    Clubs     10
    Wait Until Page Contains    Brands    10 