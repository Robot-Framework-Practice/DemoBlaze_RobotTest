*** Settings ***
Library                       Selenium2Library
Library                       String
Resource                      ../../testcases/TC_signUp.robot

*** Variables ***
# Common
${URL}                    https://www.demoblaze.com/index.html
${Browser}                Chrome
${DELAY}                  0.5s

# Locators
${SignupLink}                 id=signin2
${SignupUsernameInput}        id=sign-username
${SignupPasswordInput}        id=sign-password
${SignupBtn}                  css:#signInModal > div > div > div.modal-footer > button.btn.btn-primary
${Popup_Signup}               id=signInModalLabel

*** Keywords ***
Open my browser
    Open Browser            ${URL}    ${Browser}
    Maximize Browser Window
    Set Selenium Speed      ${DELAY}
    Should Be Title Case    STORE

Input Valid Username
    Input Text              ${SignupUsernameInput}    ${ValidUsername}

Input Valid Password
    Input Text              ${SignupPasswordInput}    ${ValidPassword}

Input InValid Username      
    Input Text              ${SignupUsernameInput}    ${InvalidUsername}

Input Invalid Password
    Input Text              ${SignupPasswordInput}    ${InvalidPassword}

Input Empty Username        
    Input Text              ${SignupUsernameInput}    ${EmptyUsername}

Input Empty Password        
    Input Text              ${SignupPasswordInput}    ${EmptyPassword}

Click Signup button
    Click Button            ${SignupBtn}

Click Signup Link
    Click Element           ${SignupLink}