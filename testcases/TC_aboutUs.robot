*** Settings ***
Resource    ../POM/AboutUsPage.robot


*** Test cases ***
TC_01 Sucessful About Us
    Open Browser To HomePage
    Click Link      ${link_about_us}
    Click Button    ${button_play}
    Sleep           2s
    Click Button    ${button_pause}
    Click Button    ${button_close} 
    Close Browser
