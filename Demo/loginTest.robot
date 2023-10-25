*** Settings ***
Library    SeleniumLibrary
Resource    ../Pages/loginPage.robot
Resource    ../Resources/common.robot
Test Setup    InvokeBrowser
Test Teardown  Close Browser
Test Template   LoginTestWithInvalidData


*** Test Cases ***

LoginTest   RAJ@gmail.com    RAJ    Your email or password is incorrect! 
       







*** Keywords ***
LoginTestWithInvalidData

    [Arguments]    ${USEREMAIL}    ${PASSWORD}    ${ERRORMESSAGE}

    ClickLogin
   
    EnterLoginEmail    ${USEREMAIL}
 
    EnterLoginPassword    ${PASSWORD}
    
    ClickLoginButton    
   
    ValidateLoginError    ${ERRORMESSAGE}


  
    






    
    

    
