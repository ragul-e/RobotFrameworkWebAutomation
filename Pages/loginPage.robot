*** Settings ***
Library    SeleniumLibrary
Resource    ../configuration/config.robot
Resource    ../Pages/HomePage.robot
Resource    ../Utilities/CommonMethods.robot

*** Variables ***
${LOGIN_EMAIL_TEXTFIELD}        //input[@data-qa='login-email']   
${Login_PASSWORD_TEXTFIELD}           //input[@data-qa='login-password']
${LOGIN_BUTTON}                  //button[text()='Login']
${LOGIN_ERROR_MESSAGE}         //p[text()='Your email or password is incorrect!']


${SIGINUP_NAME_TEXTFIELD}    //input[@data-qa='signup-name']
${SIGNUP_EMAIL_TEXTFIELD}    //input[@data-qa='signup-email']
${SIGNUP_BUTTON}   //button[text()='Signup']







*** Keywords ***


ClickLogin

    Myclick    ${LOGIN_LINKTEXT}     ${LOGIN_LINKTEXT}
    # Click Element    ${LOGIN_LINKTEXT}
    Log To Console    login element clicked

EnterLoginEmail

    [Arguments]    ${loginuseremail}
    PutText    ${LOGIN_EMAIL_TEXTFIELD}    ${loginuseremail}
    # Input Text     ${LOGIN_EMAIL_TEXTFIELD}     ${loginuseremail} 
    Log To Console    login Email entered

EnterLoginPassword

    [Arguments]    ${loginPassword}
    PutText    ${Login_PASSWORD_TEXTFIELD}              ${loginPassword}
    # Input Text    ${Login_PASSWORD_TEXTFIELD}              ${loginPassword}
    Log To Console    login password entered

ClickLoginButton

    Myclick    ${LOGIN_BUTTON}    ${LOGIN_BUTTON}
    # Click Element    ${LOGIN_BUTTON}
    Log To Console    login button clicked

ValidateLoginError

     [Arguments]    ${ERROR_MESSAGE}

    ValidateText    ${ERROR_MESSAGE}

EnterSignUpName

    [Arguments]    ${signname}
    Input Text     ${SIGINUP_NAME_TEXTFIELD}    ${signname}
    Log To Console    enter sign up name

EnterSignUpEmail
    
    [Arguments]    ${Signemail}   
    Input Text     ${SIGNUP_EMAIL_TEXTFIELD}    ${Signemail}
    Log To Console    enter sign up email

SignUpButton

    Click Button    ${SIGNUP_BUTTON}
    log to console    click sign up button
    

