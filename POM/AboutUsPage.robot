*** Settings ***
Resource    source.robot

*** Variables ***

${link_about_us}    //a[normalize-space()='About us']
${button_play}    //button[@title='Play Video']
${button_pause}    //button[@title='Pause']
${button_close}    //div[@id='videoModal']//button[@type='button'][normalize-space()='Close']
    