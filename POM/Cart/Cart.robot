*** Settings ***

Library     Selenium2Library
Library    RequestsLibrary
Library    JSONLibrary 


*** Variable *** 

${Base_URL}     https://www.demoblaze.com/index.html
${Elem}         css:#tbodyid > div:nth-child(1) > div > div > h4 > a    
${Browser}    Chrome
${DELAY}    0.5s
${Time}    3s

   

*** Keywords ***
Open Browser HomePage
    Open Browser      ${Base_URL}        ${Browser}
    Maximize Browser Window
    Set Selenium Speed     ${DELAY}




    




    
    