*** Settings ***
Library     Selenium2Library
Library     RequestsLibrary
Library     JSONLibrary 
Library     String
Library     XML

*** Variables ***
${URL}                    https://www.demoblaze.com/index.html
${Browser}                Chrome
${delay}                  0.5s

*** Keywords ***
Open Browser To HomePage
    Open Browser                ${URL}    ${Browser}
    Maximize Browser Window
    Set Selenium Speed          ${delay}
    Should Be Title Case        STORE