*** Settings ***
Library    SeleniumLibrary
Resource   ../Resources/common.robot


*** Variables ***
${PRODUCT_LINKTEXT}    //ul[@class='nav navbar-nav']//a[@href='/products']
${SHOPPINGCART_TEXT}    //ol[@class='breadcrumb']//li[text()='Shopping Cart']

${REMOVE_MARK}    //tr[@id='product-5']//a[@data-product-id='5']/i
${WINTER_TOP_PRODUCT}        //a[@href='/product_details/5']


${SHOPPING_CART_TEXT}    //ol[@class='breadcrumb']/li[text()='Shopping Cart']


${PROCEED_TO_CHECKOUT_ELEMENT}    //a[text()='Proceed To Checkout']





*** Keywords ***
ClickProductMenu
    Click Element    ${PRODUCT_LINKTEXT}


ValidateCartPage
    [Arguments]     ${Expected_CartPage_text}
    ${Actual_shopping_Cart_Text}    Get Text    //a[@href='/view_cart']/u
    Should Be Equal As Strings    ${Actual_shopping_Cart_Text}     ${Expected_CartPage_text}

RemoveProductAndVerifyProductIsRemoved

    Click Element    ${REMOVE_MARK}
    Wait Until Element Is Not Visible     ${WINTER_TOP_PRODUCT}
    Page Should Not Contain Element    ${WINTER_TOP_PRODUCT}

ClicProceedToCheckout

    Click Element    ${PROCEED_TO_CHECKOUT_ELEMENT}

    


   
    

    


