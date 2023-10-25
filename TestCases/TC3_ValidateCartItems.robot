*** Settings ***
Library    SeleniumLibrary
Resource    ../Resources/common.robot
Resource    ../Pages/HomePage.robot
Resource    ../Pages/Cartpage.robot
Resource    ../Pages/Productpage.robot
Suite Setup    InvokeBrowser
Suite Teardown    Close Browser
Test Template    ValidateAddressDetailsInAddressPage


*** Test Cases ***


ValidateAddressDetails    Automation Exercise    RECOMMENDED ITEMS    Shopping Cart
    [Tags]    test:retry(3)
















*** Keywords ***
ValidateAddressDetailsInAddressPage

    [Arguments]    ${expected_homepagetitle}  ${Exp_recommended_txt}    ${Exp_Cartpage_txt}

    VerifyHomePageisVisible    ${expected_homepagetitle}

    ScrollDownToPage

    VerifyRecommendedItemsIsVisible    ${Exp_recommended_txt}

    VerifyNavigationButtonIsVisible

    AddWinterTopProductToTheCart

    ClickOnViewCartButton

    VerifyTheExistenceOfWinterProductInTheCart

    ClickProductMenu 
    
    AddProductOne

    AddProductTwo

    AddProductThree

    AddProductFour

    AddProductFive

    AddProductSix

    AddProductSeven

    AddProductEight

    AddProductNine

    AddProductTen

    AddProductEleven

    ClickCart

    ValidateCartPage    ${Exp_Cartpage_txt}

    RemoveProductAndVerifyProductIsRemoved          
 



