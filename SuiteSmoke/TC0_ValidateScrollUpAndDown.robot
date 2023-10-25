*** Settings ***
Library    SeleniumLibrary
Resource    ../Pages/HomePage.robot
Resource    ../Pages/loginPage.robot
Resource    ../Resources/common.robot
Test Setup    InvokeBrowser
Test Teardown    Close Browser
Test Template    TestSrollUpandDown







*** Test Cases ***
ValdateScrollUpAndDown    Automation Exercise     SUBSCRIPTION     Full-Fledged practice website for Automation Engineers




*** Keywords ***
TestSrollUpandDown

    [Arguments]       ${Expected_Title}   ${Exp_Sub_txt}   ${Expected_Text}

    VerifyHomePageTitle        ${Expected_Title}

    ScrollDownToPage

    VerifySubscriptionIsVisible       ${Exp_Sub_txt}   

    ClickUpArrowBotton


    VerifyFullFlegedTexgIsVisible    ${Expected_Text}



    












