*** Settings ***
Resource        ../POM/SignUpPage/SignUpPage.robot

*** Variables ***
${time}                       5s

${ValidUsername}              dangkhoa005
${ValidPassword}              KendyK021072??..

${InvalidUsername}            dangkhoaNH
${InvalidPassword}            Khoa123456

${EmptyUsername}          
${EmptyPassword}

${signUpTitle}                 Sign up

# Sucessfully message
${success_signup}              Sign up successful.

# Error message
${error_user}                  This user already exist.
${error_empty}                 Please fill out Username and Password.
${error_empty_username}        Please fill out Username.
${error_empty_password}        Please fill out Password.

*** Test Cases ***
TC_01_Signup with Valid Data
    Open Browser To HomePage
    Click Signup Link
    Wait Until Element Is Visible    ${Popup_Signup}
    ${signUpText}   Get Text         ${Popup_Signup}
    Should Be Equal                  ${signUpText}        ${signUpTitle}
    Input Valid Username
    Input Valid Password
    Click Signup button
    Sleep                            ${time}
    Alert Should Be Present          ${success_signup}
    Close Browser

TC_02_Signup with InValid Data: Username exist
    Open Browser To HomePage
    Click Signup Link
    Wait Until Element Is Visible    ${Popup_Signup}
    ${signUpText}   Get Text         ${Popup_Signup}
    Should Be Equal                  ${signUpText}        ${signUpTitle}
    Input Invalid Username
    Input Invalid Password
    Click Signup button
    Sleep                            ${time}
    Alert Should Be Present          ${error_user}
    Close Browser

TC_03_Signup with Empty Data
    Open Browser To HomePage
    Click Signup Link
    Wait Until Element Is Visible    ${Popup_Signup}
    ${signUpText}   Get Text         ${Popup_Signup}
    Should Be Equal                  ${signUpText}        ${signUpTitle}
    Input Empty Username
    Input Empty Password
    Click Signup button
    Sleep                            ${time}
    Alert Should Be Present          ${error_empty}
    Close Browser

TC_04_Signup with Empty Data: Username Empty
    Open Browser To HomePage
    Click Signup Link
    Wait Until Element Is Visible    ${Popup_Signup}
    ${signUpText}   Get Text         ${Popup_Signup}
    Should Be Equal                  ${signUpText}        ${signUpTitle}
    Input Empty Username
    Input Valid Password
    Click Signup button
    Sleep                            ${time}
    Alert Should Be Present          ${error_empty_username}
    Close Browser

TC_05_Signup with Empty Data: Password Empty
    Open Browser To HomePage
    Click Signup Link
    Wait Until Element Is Visible    ${Popup_Signup}
    ${signUpText}   Get Text         ${Popup_Signup}
    Should Be Equal                  ${signUpText}        ${signUpTitle}
    Input Valid Username
    Input Empty Password
    Click Signup button
    Sleep                            ${time}
    Alert Should Be Present          ${error_empty_password}
    Close Browser