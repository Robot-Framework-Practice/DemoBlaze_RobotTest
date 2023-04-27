*** Settings ***
Resource        ../source.robot

*** Variables ***
${logo_title}            css:#nava
${slideshow}             css:#carouselExampleIndicators > div > div
${btnSlideshowNext}      css:#carouselExampleIndicators > a.carousel-control-next > span.carousel-control-next-icon
${btnSlideshowPrev}      css:#carouselExampleIndicators > a.carousel-control-prev > span.carousel-control-prev-icon
@{images}=               css:#carouselExampleIndicators > ol > li
${count}=                Get Matching Xpath Count    //*[@id="carouselExampleIndicators"]/ol/li
${firstImage}=           xpath://*[@id="carouselExampleIndicators"]/ol/li