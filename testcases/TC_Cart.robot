*** Settings ***
Resource     ../POM/Cart/Cart.robot

*** Test cases ***
TC_AddtoCART
    Open Browser HomePage
    #Sleep    5s
    Wait Until Element Is Visible    ${Elem}
    Click Element                    ${Elem}           #Link phone
    Sleep                            ${Time}
    Click Link                       css:#tbodyid > div.row > div > a        # Button Add to Cart
    Sleep                            ${Time}
    Handle Alert                     ACCEPT            timeout=2s
    Close Browser

TC_Cart
    Open Browser HomePage
    Wait Until Element Is Visible    ${Elem}    
    Click Element                    ${Elem}               #Link phone
    Sleep                            ${Time}
    Click Link                       css:#tbodyid > div.row > div > a        # Button Add to Cart
    Sleep                            ${Time}
    Handle Alert                     ACCEPT            timeout=2s
    Click Link                       css:#navbarExample > ul > li:nth-child(4) > a             #Button Cart
    Wait Until Element Is Visible    css:#tbodyid > tr:nth-child(1) > td:nth-child(4) > a    
    Click Link                       css:#tbodyid > tr:nth-child(1) > td:nth-child(4) > a
    #Click Button                     css:#page-wrapper > div > div.col-lg-1 > button            #Button Place Order
    Sleep                            ${Time}
    Close Browser

TC_Purchase
    Open Browser HomePage
    Click Link      css:#navbarExample > ul > li:nth-child(4) > a            #Button Cart
    Click Button    css:#page-wrapper > div > div.col-lg-1 > Button        #Button Place Order
    Input Text        id=name        TT
    Input Text        id=country     VN    
    Input Text        id=city        HCM
    Input Text        id=card        0121234321
    Input Text        id=month       April
    Input Text        id=year        2024
    Click Button    css:#orderModal > div > div > div.modal-footer > button.btn.btn-primary        #Button Purchase
    Sleep    ${Time}
    Close Browser
