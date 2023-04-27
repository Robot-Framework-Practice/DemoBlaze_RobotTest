*** Settings ***
Resource        ../POM/SignUpPage/SignUpPage.robot

*** Test Cases ***
TC_01_Signup with Valid Data
    Open Browser To HomePage
    Click Signup Link
    Compare Title SignUp
    Input Valid Username
    Input Valid Password
    Click Signup button
    SleepTime
    Alert Should Be Present          ${success_signup}
    Close Browser

TC_02_Signup with InValid Data: Username exist
    Open Browser To HomePage
    Click Signup Link
    Compare Title SignUp
    Input Invalid Username
    Input Invalid Password
    Click Signup button
    SleepTime
    Alert Should Be Present          ${error_user}
    Close Browser

TC_03_Signup with Empty Data
    Open Browser To HomePage
    Click Signup Link
    Compare Title SignUp
    Input Empty Username
    Input Empty Password
    Click Signup button
    SleepTime
    Alert Should Be Present          ${error_empty}
    Close Browser

TC_04_Signup with Empty Data: Username Empty
    Open Browser To HomePage
    Click Signup Link
    Compare Title SignUp
    Input Empty Username
    Input Valid Password
    Click Signup button
    SleepTime
    Alert Should Be Present          ${error_empty_username}
    Close Browser

TC_05_Signup with Empty Data: Password Empty
    Open Browser To HomePage
    Click Signup Link
    Compare Title SignUp
    Input Valid Username
    Input Empty Password
    Click Signup button
    SleepTime
    Alert Should Be Present          ${error_empty_password}
    Close Browser