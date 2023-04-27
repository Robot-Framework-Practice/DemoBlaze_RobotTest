*** Settings ***
Library                      Selenium2Library
Library                      String
Resource                     ../../testcases/TC_logIn.robot

*** Variables ***
# Common
${URL}                       https://www.demoblaze.com/index.html
${Browser}                   Chrome
${DELAY}                     0.5s

# Locators
${LoginLink}                 id=login2
${LoginUsernameInput}        id=loginusername
${LoginPasswordInput}        id=loginpassword
${LoginBtn}                  xpath://button[normalize-space()='Log in']
${WelcomeId}                 id=nameofuser
${Popup_Login}               id=logInModalLabel

# Test Data
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

*** Keywords ***
Open my browser
    Open Browser              ${URL}    ${Browser}
    Maximize Browser Window
    Set Selenium Speed        ${DELAY}
    Should Be Title Case      STORE
Input Valid Username
    Input Text                ${LoginUsernameInput}    ${ValidUsername}

Input Valid Password
    Input Text                ${LoginPasswordInput}    ${ValidPassword}    

Input InValid Username      
    Input Text                ${LoginUsernameInput}    ${InvalidUsername}

Input Invalid Password
    Input Text                ${LoginPasswordInput}    ${InvalidPassword}

Input Empty Username        
    Input Text                ${LoginUsernameInput}    ${EmptyUsername}

Input Empty Password        
    Input Text                ${LoginPasswordInput}    ${EmptyPassword}

Click Login button
    Click Button              ${LoginBtn}

Click Login Link
    Click Element             ${LoginLink}

Compare Title LogIn
    Wait Until Element Is Visible    ${Popup_Login}
    ${logInText}   Get Text          ${Popup_Login}
    Should Be Equal                  ${logInText}        ${logInTitle}

Compare Welcome User
    Wait Until Element Is Visible    ${WelcomeId}
    ${welcomeText}   Get Text        ${WelcomeId}
    Should Be Equal                  ${welcomeText}        ${welcomeUser}

SleepTime
    Sleep                      ${time}