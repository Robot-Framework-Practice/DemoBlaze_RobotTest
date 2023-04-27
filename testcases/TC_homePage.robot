*** Settings ***
Resource        ../POM/HomePage/HomePage.robot

*** Test Cases ***
TC01 - HomePage_Title
    Open Browser To HomePage
    Wait Until Location Is              ${URL}
    ${message}=  Get text               ${logo_title}         
    Log To Console                      ${message} 
    Should be equal                     ${message}  PRODUCT STORE
    Sleep                               ${delay}
    Close Browser

TC02 - Slideshow_Next
    Open Browser To HomePage
    Wait Until Location Is              ${URL}
    FOR    ${firstImage}    IN    @{images}
        Click Element                       ${btnSlideshowNext}
        # Wait until element is visible       ${slideshow}\[contains(@class, 'carousel-item active')]
        Sleep                     ${delay}
    END
    Sleep                               ${delay}
    Close Browser

TC03 - Slideshow_Prev
    Open Browser To HomePage
    Wait Until Location Is              ${URL}
    FOR    ${firstImage}    IN    ${count}
        Click Element             ${btnSlideshowPrev}
        Sleep                     ${delay}
    END
    Sleep                               ${delay}
    Close Browser