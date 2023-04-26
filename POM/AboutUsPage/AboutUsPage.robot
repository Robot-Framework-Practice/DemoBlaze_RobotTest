*** settings ***
Library    Selenium2Library

*** Variables ***
${Base_Url}    https://www.demoblaze.com/
${Browser}    Chrome
${Delay}    0.5s

${link_about_us}    css:#navbarExample > ul > li:nth-child(3) > a
${button_play}    css:#example-video > button
${button_pause}    css:#example-video > div.vjs-control-bar > button.vjs-play-control.vjs-control.vjs-button.vjs-playing
${button_close}    css:#videoModal > div > div > div.modal-footer > button
${link_home}    https://www.demoblaze.com/index.html

*** Keywords ***
Open Browser Demoblaze
    Open Browser    ${Base_Url}    ${Browser}
    Maximize Browser Window
    Set Selenium Speed    ${Delay}
    