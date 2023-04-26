*** Settings ***
Resource    ../POM/AboutUsPage/AboutUsPage.robot


*** Test cases ***
TC_01 Sucessful About Us
    Open Browser Demoblaze
    Click Link    ${link_about_us}
    Click Button    ${button_play}
    Sleep    2s
    Click Button    ${button_pause}
    Click Button    ${button_close} 
    Close Browser



