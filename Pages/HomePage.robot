*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${LOGIN_LINKTEXT}    //a[@href='/login']
${SIGN_UP}    //button[text()='Signup']
${LOGGEDIN_AS_USERNAME}    //div[@class='shop-menu pull-right']//ul/li[last()]//a
${RECOMMENDED_ITEMS_WEBELEMENT}    //div[@class='recommended_items']//h2[text()='recommended items']
${LEFT_NAV_BTN_IN_REC_ITEM}    //a[@class='left recommended-item-control']
${Right_NAV_BTN_IN_REC_ITEM}    //a[@class='right recommended-item-control']  
${ADDWINTERPRODUCTTOCART}    //div[@id='recommended-item-carousel']//a[@data-product-id='5'] 
${VIEW_CARTBUTTON}    //div[@id='cartModal']//a[@href='/view_cart']
${WINTERPRODUCTINCARTPAGE}    //tr[@id='product-5']//h4

${CONTINUE_SHOPPING_BUTTON}       //button[text()='Continue Shopping']

${PRODUCT_TWENTYEIGHT}    //div[@class='productinfo text-center']//a[@data-product-id='28']
${VIEW_CART}    //a[@href='/view_cart']//u

${SUBSCRIPTION_TEXT}   //h2[text()='Subscription']
${UPARROW_BURRON}    //a[@id='scrollUp']
${FULLFLEGED_TEXT}    //div[@class='item active']//h2[text()='Full-Fledged practice website for Automation Engineers']




   



*** Keywords ***
VerifyLoggedInasUsername

    [Arguments]       ${Expected_Text}
    Wait Until Element Is Visible    ${LOGGEDIN_AS_USERNAME}
    ${ActuL_Text}       Get Text     ${LOGGEDIN_AS_USERNAME}  
    
    Should Be Equal As Strings      ${ActuL_Text}      ${Expected_Text}
    Log To Console    log username is verified


VerifyHomePageisVisible

    [Arguments]    ${Excepected_Title}
    ${Actual_Homepage_Title}    Get Title
    Should Be Equal As Strings     ${Actual_Homepage_Title}     ${Excepected_Title}
    Log To Console   home page is visible

ScrollDownToPage
    
    Execute JavaScript    window.scrollTo(0, document.body.scrollHeight)
    Log To Console    scroll down executed

VerifyRecommendedItemsIsVisible

    [Arguments]    ${Excepected_Recommended_text}

    Scroll Element Into View    ${RECOMMENDED_ITEMS_WEBELEMENT}
    ${Actual_Recommended_Text}    Get Text    ${RECOMMENDED_ITEMS_WEBELEMENT} 
    Log To Console    ${Actual_Recommended_Text}
    Should Be Equal As Strings     ${Actual_Recommended_Text}     ${Excepected_Recommended_text}
    Log To Console    Recommended item is visible



    

VerifyNavigationButtonIsVisible
    
    Page Should Contain Element      ${LEFT_NAV_BTN_IN_REC_ITEM}  
    Page Should Contain Element     ${Right_NAV_BTN_IN_REC_ITEM}
    Log To Console    navigation button is visible

AddWinterTopProductToTheCart

    Click Element            ${ADDWINTERPRODUCTTOCART}    
    Log To Console     winterproduct product added

ClickOnViewCartButton
    Wait Until Element Is Visible     ${VIEW_CARTBUTTON}  
    Click Element     ${VIEW_CARTBUTTON}
    Log To Console    view cart button is clicked

VerifyTheExistenceOfWinterProductInTheCart
    Page Should Contain Element             ${WINTERPRODUCTINCARTPAGE}
    Log To Console    winter product is exit in the cart


AddProduct
    Click Element    ${PRODUCT_TWENTYEIGHT}

ClickViewCart

    Wait Until Element Is Visible    ${CONTINUE_SHOPPING_BUTTON} 
    Click Element    ${VIEW_CART} 


VerifyHomePageTitle

    [Arguments]    ${Excepected_Title}
    ${Actual_Homepage_Title}    Get Title
    Title Should Be     ${Actual_Homepage_Title}     ${Excepected_Title}
    Log To Console   home page is visible

VerifySubscriptionIsVisible

    [Arguments]    ${Exp_Sub_text}
   ${Actual_sub_text}     Get Text     ${SUBSCRIPTION_TEXT}
   Should Be Equal As Strings    ${Actual_sub_text}    ${Exp_Sub_text}


ClickUpArrowBotton
    Click Element    ${UPARROW_BURRON}


VerifyFullFlegedTexgIsVisible

    [Arguments]    ${Exp_Fulfleged_text}


   ${fullfleged_txt}   Get Text     ${FULLFLEGED_TEXT}  
   Log    ${fullfleged_txt}
   Should Be Equal As Strings   ${fullfleged_txt}   ${Exp_Fulfleged_text}
    
    

    
    

    
    

    

    

    

    

    

    
    


