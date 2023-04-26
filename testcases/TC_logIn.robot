*** Settings ***
Library         Selenium2Library
Variables       ../POM/LoginPage/LoginPage.robot
Resource        ../POM/LoginPage/LoginPage.robot

*** Variables ***
${time}                       5s

${ValidUsername}              dangkhoaNH
${ValidPassword}              KendyK021072??..

${InvalidUsername}            dangkhoa100
${InvalidPassword}            Khoa123456

${EmptyUsername}          
${EmptyPassword}


${welcomeUser}                Welcome dangkhoaNH
${logInTitle}                 Log in

# Message error
${error_user}                 User does not exist.
${error_password}             Wrong password.
${error_empty}                Please fill out Username and Password.
${error_empty_username}       Please fill out Username.
${error_empty_password}       Please fill out Password.

*** Test Cases ***
TC_01_Login with Valid Data
    Open my browser
    Click Login Link
    Wait Until Element Is Visible    ${Popup_Login}
    ${logInText}   Get Text          ${Popup_Login}
    Should Be Equal                  ${logInText}        ${logInTitle}
    Input Valid Username
    Input Valid Password
    Click Login button
    Wait Until Element Is Visible    ${WelcomeId}
    ${welcomeText}   Get Text        ${WelcomeId}
    Should Be Equal                  ${welcomeText}        ${welcomeUser}
    Close Browser

TC_02_Login with Invalid Data: User not exist
    Open my browser
    Click Login Link
    Wait Until Element Is Visible    ${Popup_Login}
    ${logInText}   Get Text          ${Popup_Login}
    Should Be Equal                  ${logInText}        ${logInTitle}
    Input Invalid Username
    Input Invalid Password
    Click Login button
    Sleep                            ${time}
    Alert Should Be Present          ${error_user}
    Close Browser

TC_03_Lgin with Invalid Data: Password invalid
    Open my browser
    Click Login Link
    Wait Until Element Is Visible    ${Popup_Login}
    ${logInText}   Get Text          ${Popup_Login}
    Should Be Equal                  ${logInText}        ${logInTitle}
    Input Valid Username
    Input Invalid Password
    Click Login button
    Sleep                            ${time}
    Alert Should Be Present          ${error_password}
    Close Browser

TC_04_Login with Empty Data
    Open my browser
    Click Login Link
    Wait Until Element Is Visible    ${Popup_Login}
    ${logInText}   Get Text          ${Popup_Login}
    Should Be Equal                  ${logInText}        ${logInTitle}
    Input Empty Username
    Input Empty Password
    Click Login button
    Sleep                            ${time}
    Alert Should Be Present          ${error_empty}
    Close Browser

TC_05_Login with Empty Data: Empty Username
    Open my browser
    Click Login Link
    Wait Until Element Is Visible    ${Popup_Login}
    ${logInText}   Get Text          ${Popup_Login}
    Should Be Equal                  ${logInText}        ${logInTitle}
    Input Empty Username
    Input Valid Password
    Click Login button
    Sleep                            ${time}
    Alert Should Be Present          ${error_empty_username}
    Close Browser

TC_06_Login with Empty Data: Empty Password
    Open my browser
    Click Login Link
    Wait Until Element Is Visible    ${Popup_Login}
    ${logInText}   Get Text          ${Popup_Login}
    Should Be Equal                  ${logInText}        ${logInTitle}
    Input Valid Username
    Input Empty Password
    Click Login button
    Sleep                            ${time}
    Alert Should Be Present          ${error_empty_password}
    Close Browser