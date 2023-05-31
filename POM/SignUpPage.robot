*** Settings ***
Resource            source.robot
Resource            ../testcases/TC_signUp.robot

*** Variables ***
# Locators
${SignupLink}                 id=signin2
${SignupUsernameInput}        id=sign-username
${SignupPasswordInput}        id=sign-password
${SignupBtn}                  xpath://button[normalize-space()='Sign up']
${Popup_Signup}               id=signInModalLabel

# Test Data
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

*** Keywords ***
Input Valid Username
    Input Text                 ${SignupUsernameInput}    ${ValidUsername}

Input Valid Password
    Input Text                 ${SignupPasswordInput}    ${ValidPassword}

Input InValid Username      
    Input Text                 ${SignupUsernameInput}    ${InvalidUsername}

Input Invalid Password
    Input Text                 ${SignupPasswordInput}    ${InvalidPassword}

Input Empty Username        
    Input Text                 ${SignupUsernameInput}    ${EmptyUsername}

Input Empty Password        
    Input Text                 ${SignupPasswordInput}    ${EmptyPassword}

Click Signup button
    Click Button               ${SignupBtn}

Click Signup Link
    Click Element              ${SignupLink}

Compare Title SignUp
    Wait Until Element Is Visible    ${Popup_Signup}
    ${signUpText}   Get Text         ${Popup_Signup}
    Should Be Equal                  ${signUpText}        ${signUpTitle}

SleepTime
    Sleep                      ${time}