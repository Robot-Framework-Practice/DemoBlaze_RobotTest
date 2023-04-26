*** Settings ***
Library        Selenium2Library

*** Variables ***
${base_url}              https://demoblaze.com/
${browser}               chrome
${second}                0.5s
${delay}                 1.5s
${logo_title}            css:#nava
${slideshow}             css:#carouselExampleIndicators > div > div
${btnSlideshowNext}      css:#carouselExampleIndicators > a.carousel-control-next > span.carousel-control-next-icon
${btnSlideshowPrev}      css:#carouselExampleIndicators > a.carousel-control-prev > span.carousel-control-prev-icon
@{images}=               css:#carouselExampleIndicators > ol > li
${count}=                Get Matching Xpath Count    //*[@id="carouselExampleIndicators"]/ol/li
${firstImage}=           xpath://*[@id="carouselExampleIndicators"]/ol/li

*** Keywords ***
Open Browser To HomePage
    Open Browser              ${base_url}        ${browser}
    Maximize Browser Window
    Set Selenium Speed        ${second}