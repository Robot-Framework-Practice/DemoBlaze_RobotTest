*** Settings ***
Library        Selenium2Library

*** Variables ***
${base_url}              https://demoblaze.com/
${browser}               chrome
${second}                0.5s
${delay}                 1.5s
${logo_title}            css:#nava

*** Keywords ***
Open Browser To HomePage
    Open Browser              ${base_url}        ${browser}
    Maximize Browser Window
    Set Selenium Speed        ${second}