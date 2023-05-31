*** Settings ***
Resource    source.robot

*** Variables ***
${link_contact}        css:#navbarExample > ul > li:nth-child(2) > a
${input_email}         id:recipient-email
${input_name}          id:recipient-name
${input_message}       id:message-text
${button_send}         css:#exampleModal > div > div > div.modal-footer > button.btn.btn-primary