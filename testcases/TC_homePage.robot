*** Settings ***
Resource        ../POM/HomePage/HomePage.robot
Library    XML

*** Test Cases ***
TC01 - HomePage_Title
    Open Browser To HomePage
    Wait Until Location Is              ${base_url}
    # Wait Until Page Contains Element    ${logo_title}
    # ${title}        Get Element         ${logo_title}    
    # Should be equal                     ${title.text}       PRODUCT STORE
    ${message}=  Get text  ${logo_title}         
    Log To Console                      ${message} 
    Should be equal  ${message}  PRODUCT STORE
    Sleep                               ${delay}
    Close Browser