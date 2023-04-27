*** Settings ***
Resource        ../POM/LoginPage/LoginPage.robot

*** Test Cases ***
TC_01_Login with Valid Data
    Open Browser To HomePage
    Click Login Link
    Compare Title LogIn
    Input Valid Username
    Input Valid Password
    Click Login button
    Compare Welcome User
    Close Browser

TC_02_Login with Invalid Data: User not exist
    Open Browser To HomePage
    Click Login Link
    Compare Title LogIn
    Input Invalid Username
    Input Invalid Password
    Click Login button
    SleepTime
    Alert Should Be Present          ${error_user}
    Close Browser

TC_03_Lgin with Invalid Data: Password invalid
    Open Browser To HomePage
    Click Login Link
    Compare Title LogIn
    Input Valid Username
    Input Invalid Password
    Click Login button
    SleepTime
    Alert Should Be Present          ${error_password}
    Close Browser

TC_04_Login with Empty Data
    Open Browser To HomePage
    Click Login Link
    Compare Title LogIn
    Input Empty Username
    Input Empty Password
    Click Login button
    SleepTime
    Alert Should Be Present          ${error_empty}
    Close Browser

TC_05_Login with Empty Data: Empty Username
    Open Browser To HomePage
    Click Login Link
    Compare Title LogIn
    Input Empty Username
    Input Valid Password
    Click Login button
    SleepTime
    Alert Should Be Present          ${error_empty_username}
    Close Browser

TC_06_Login with Empty Data: Empty Password
    Open Browser To HomePage
    Click Login Link
    Compare Title LogIn
    Input Valid Username
    Input Empty Password
    Click Login button
    SleepTime
    Alert Should Be Present          ${error_empty_password}
    Close Browser