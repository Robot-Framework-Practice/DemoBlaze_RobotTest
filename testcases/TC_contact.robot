*** Settings ***
Resource    ../POM/ContactPage/ContactPage.robot


*** Test cases ***
TC_01 Sucessful Send Message Contact
    Open Browser Demoblaze
    Click Link    ${link_contact}
    Input Text    ${input_email}    huyen@gmail.com
    Input Text    ${input_name}    huyen
    Input Text    ${input_message}    Please contact me
    Click Button    ${button_send}
    Alert Should Be Present    Thanks for the message!!
    Close Browser

TC_02 Failed Send Message Contact
    Open Browser Demoblaze
    Click Link    ${link_contact}
    Click Button    ${button_send}
    Alert Should Be Present    Please fill all fields
    Close Browser

