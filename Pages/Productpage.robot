*** Settings ***
Library     SeleniumLibrary
Resource    ../configuration/config.robot



*** Variables ***

${CART_LINKTEXT}    //ul[@class='nav navbar-nav']//a[@href='/view_cart']

${PRODUCT_SEARCHBAR}    //input[@id='search_product']
${CONTINUE_SHOPPING_BUTTON}    //button[text()='Continue Shopping']

${PRODUCTONE_CART_BTN}    //div[@class='productinfo text-center']//a[@data-product-id='1']
${PRODUCTTWO_CART_BTN}    //div[@class='productinfo text-center']//a[@data-product-id='2']
${PRODUCTTHREE_CART_BTN}    //div[@class='productinfo text-center']//a[@data-product-id='6']
${PRODUCTFOUR_CART_BTN}    //div[@class='productinfo text-center']//a[@data-product-id='8']
${PRODUCTFIVE_CART_BTN}     //div[@class='productinfo text-center']//a[@data-product-id='30']
${PRODUCTSIX_CART_BTN}     //div[@class='productinfo text-center']//a[@data-product-id='33']
${PRODUCTSEVEN_CART_BTN}     //div[@class='productinfo text-center']//a[@data-product-id='3']
${PRODUCTEIGHT_CART_BTN}    //div[@class='productinfo text-center']//a[@data-product-id='7']
${PRODUCTNINE_CART_BTN}     //div[@class='productinfo text-center']//a[@data-product-id='35']
${PRODUCTTEN_CART_BTN}     //div[@class='productinfo text-center']//a[@data-product-id='35']
${PRODUCTELEVEN_CART_BTN}     //div[@class='productinfo text-center']//a[@data-product-id='11']






*** Keywords ***
AddProductOne

     
    
   Reload Page
    Clear Element Text    ${PRODUCT_SEARCHBAR}
    sleep    2s
    Reload Page
    Input Text    ${PRODUCT_SEARCHBAR}    ${productone}
    Click Element   ${PRODUCTONE_CART_BTN}  
    Wait Until Element Is Visible    ${CONTINUE_SHOPPING_BUTTON}
    Click Element     ${CONTINUE_SHOPPING_BUTTON}   

AddProductTwo

    Clear Element Text    ${PRODUCT_SEARCHBAR}
    Input Text    ${PRODUCT_SEARCHBAR}    ${producttwo}
    Click Element   ${PRODUCTTWO_CART_BTN}  
    Wait Until Element Is Visible    ${CONTINUE_SHOPPING_BUTTON}
    Click Element     ${CONTINUE_SHOPPING_BUTTON} 

AddProductThree

    Clear Element Text    ${PRODUCT_SEARCHBAR}
    Input Text    ${PRODUCT_SEARCHBAR}    ${producttthree}
    Click Element   ${PRODUCTThree_CART_BTN}
    Wait Until Element Is Visible    ${CONTINUE_SHOPPING_BUTTON}
    Click Element     ${CONTINUE_SHOPPING_BUTTON} 

AddProductFour

    Clear Element Text    ${PRODUCT_SEARCHBAR}
    Input Text    ${PRODUCT_SEARCHBAR}    ${productfour}
    Click Element   ${PRODUCTFOUR_CART_BTN}
    Wait Until Element Is Visible    ${CONTINUE_SHOPPING_BUTTON}
    Click Element     ${CONTINUE_SHOPPING_BUTTON} 

AddProductFive

    Clear Element Text    ${PRODUCT_SEARCHBAR}
    Input Text    ${PRODUCT_SEARCHBAR}    ${productfive}
    Click Element   ${PRODUCTFIVE_CART_BTN}
    Wait Until Element Is Visible    ${CONTINUE_SHOPPING_BUTTON}
    Click Element     ${CONTINUE_SHOPPING_BUTTON} 

AddProductSix

    Clear Element Text    ${PRODUCT_SEARCHBAR}
    Input Text    ${PRODUCT_SEARCHBAR}    ${productsix}
    Click Element   ${PRODUCTSIX_CART_BTN}
    Wait Until Element Is Visible    ${CONTINUE_SHOPPING_BUTTON}
    Click Element     ${CONTINUE_SHOPPING_BUTTON} 

AddProductSeven

    Clear Element Text    ${PRODUCT_SEARCHBAR}
    Input Text    ${PRODUCT_SEARCHBAR}    ${productseven}
    Click Element   ${PRODUCTSEVEN_CART_BTN}
    Wait Until Element Is Visible    ${CONTINUE_SHOPPING_BUTTON}
    Click Element     ${CONTINUE_SHOPPING_BUTTON} 

AddProductEight

    Clear Element Text    ${PRODUCT_SEARCHBAR}
    Input Text    ${PRODUCT_SEARCHBAR}    ${producteight}
    Click Element   ${PRODUCTEIGHT_CART_BTN}
    Wait Until Element Is Visible    ${CONTINUE_SHOPPING_BUTTON}
    Click Element     ${CONTINUE_SHOPPING_BUTTON} 

AddProductNine

    Clear Element Text    ${PRODUCT_SEARCHBAR}
    Input Text    ${PRODUCT_SEARCHBAR}    ${productnine}
    Click Element   ${PRODUCTNINE_CART_BTN}
    Wait Until Element Is Visible    ${CONTINUE_SHOPPING_BUTTON}
    Click Element     ${CONTINUE_SHOPPING_BUTTON} 

AddProductTen

    Clear Element Text    ${PRODUCT_SEARCHBAR}
    Input Text    ${PRODUCT_SEARCHBAR}    ${productten}
    Click Element   ${PRODUCTTEN_CART_BTN}
    Wait Until Element Is Visible    ${CONTINUE_SHOPPING_BUTTON}
    Click Element     ${CONTINUE_SHOPPING_BUTTON} 

AddProductEleven

    Clear Element Text    ${PRODUCT_SEARCHBAR}
    Input Text    ${PRODUCT_SEARCHBAR}    ${producteleven}
    Click Element   ${PRODUCTELEVEN_CART_BTN}
    Wait Until Element Is Visible    ${CONTINUE_SHOPPING_BUTTON}
    Click Element     ${CONTINUE_SHOPPING_BUTTON} 

ClickCart

    Click Element    ${CART_LINKTEXT}





