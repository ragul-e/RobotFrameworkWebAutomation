*** Settings ***
Library    SeleniumLibrary
Resource    ../Resources/common.robot   
Resource    ../Pages/loginPage.robot
Resource    ../configuration/config.robot
Library    DataDriver    ../TestData/InvalidLoginData.xlsx
Suite Setup    InvokeBrowser
Suite Teardown    TearDown
Test Template    LoginTestWithInvalidData


*** Test Cases ***   
Login With invalid credentials should fail    ${USEREMAIL}    ${PASSWORD}    ${ERRORMESSAGE}


   

*** Keywords ***
LoginTestWithInvalidData

    [Arguments]    ${USEREMAIL}    ${PASSWORD}    ${ERRORMESSAGE}

    ClickLogin

    EnterLoginEmail    ${USEREMAIL}
   
    EnterLoginPassword    ${PASSWORD}
    
    ClickLoginButton    
   
    ValidateLoginError    ${ERRORMESSAGE}
 