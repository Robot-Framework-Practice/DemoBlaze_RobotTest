*** Settings ***
Resource    ../source.robot

*** Variables ***
${link_contact}    //a[normalize-space()='Contact']
${input_email}    id:recipient-email
${input_name}    id:recipient-name
${input_message}    id:message-text
${button_send}    //button[normalize-space()='Send message']