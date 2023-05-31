*** Settings ***
Resource        source.robot

*** Variables ***
${logo_title}            xpath://a[@id='nava']//img
${slideshow}             xpath://a[@id='nava']//img
${btnSlideshowNext}      xpath://a[@id='nava']//img
${btnSlideshowPrev}      xpath://a[@id='nava']//img
@{images}=               xpath://a[@id='nava']//img
${count}=                Get Matching Xpath Count    //a[@id='nava']//img
${firstImage}=           xpath://a[@id='nava']//img[1]