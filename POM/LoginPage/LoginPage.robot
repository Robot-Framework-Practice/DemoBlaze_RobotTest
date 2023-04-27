*** Settings ***
Resource        ../source.robot
Resource        ../../testcases/TC_logIn.robot

*** Variables ***
# Locators
${LoginLink}              id=login2
${LoginUsernameInput}     id=loginusername
${LoginPasswordInput}     id=loginpassword
${LoginBtn}               css:#logInModal > div > div > div.modal-footer > button.btn.btn-primary
${WelcomeId}              id=nameofuser
${Popup_Login}            id=logInModalLabel

*** Keywords ***
Input Valid Username
    Input Text              ${LoginUsernameInput}    ${ValidUsername}

Input Valid Password
    Input Text              ${LoginPasswordInput}    ${ValidPassword}    

Input InValid Username      
    Input Text              ${LoginUsernameInput}    ${InvalidUsername}

Input Invalid Password
    Input Text              ${LoginPasswordInput}    ${InvalidPassword}

Input Empty Username        
    Input Text              ${LoginUsernameInput}    ${EmptyUsername}

Input Empty Password        
    Input Text              ${LoginPasswordInput}    ${EmptyPassword}

Click Login button
    Click Button            ${LoginBtn}

Click Login Link
    Click Element           ${LoginLink}
