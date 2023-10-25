*** Settings ***
Library    SeleniumLibrary
Resource    ../configuration/config.robot
Resource    ../Pages/HomePage.robot

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
    Click Element    ${LOGIN_LINKTEXT}
    Log To Console    login element clicked

EnterLoginEmail

    [Arguments]    ${loginuseremail}
    Input Text     ${LOGIN_EMAIL_TEXTFIELD}     ${loginuseremail} 
    Log To Console    login Email entered

EnterLoginPassword

    [Arguments]    ${loginPassword}
    Input Text    ${Login_PASSWORD_TEXTFIELD}              ${loginPassword}
    Log To Console    login password entered

ClickLoginButton

    Click Element    ${LOGIN_BUTTON}
    Log To Console    login button clicked

ValidateLoginError

    [Arguments]    ${ERROR_MESSAGE}
    Wait Until Element Is Visible    ${LOGIN_ERROR_MESSAGE}
    Element Text Should Be    ${LOGIN_ERROR_MESSAGE}      ${ERROR_MESSAGE}
    Log To Console    login error validated


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
    

