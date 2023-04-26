*** settings ***
Library    Selenium2Library

*** Variables ***
${Base_Url}    https://www.demoblaze.com/
${Browser}    Chrome
${Delay}    0.5s

${link_contact}    css:#navbarExample > ul > li:nth-child(2) > a
${input_email}    id:recipient-email
${input_name}    id:recipient-name
${input_message}    id:message-text
${button_send}    css:#exampleModal > div > div > div.modal-footer > button.btn.btn-primary

${link_home}    https://www.demoblaze.com/index.html

*** Keywords ***
Open Browser Demoblaze
    Open Browser    ${Base_Url}    ${Browser}
    Maximize Browser Window
    Set Selenium Speed    ${Delay}
    
