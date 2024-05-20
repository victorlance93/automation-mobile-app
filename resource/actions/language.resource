*** Settings ***
Documentation        Ações e elementos da tela de idiomas

Library    AppiumLibrary

*** Keywords ***

Check language available
     Wait Until Page Contains    English - GBR           10
     Wait Until Page Contains    English - USA           10
     Wait Until Page Contains    Portuguese - Brazil     10
     Wait Until Page Contains    Spanish                 10
     Wait Until Page Contains    German (beta)           10
     Wait Until Page Contains    French (Beta)           10
     Wait Until Page Contains    Italian                 10
