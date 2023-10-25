*** Settings ***
Library    SeleniumLibrary
# Resource    ../configuration/config.robot


*** Variables ***
${ACCOUNT_CREATED_TEXT}    //b[text()='Account Created!']
# ${EXPECTED_ACCOUNT_CREATED_TEXT}    ACCOUNT CREATED!

${CONTINUE_BUTTON}    //a[@data-qa='continue-button']







*** Keywords ***
VerifyAndVadlidateAccountCreatedText

    
    [Arguments]    ${accntcreatedtext}

    Wait Until Element Is Visible    ${ACCOUNT_CREATED_TEXT}
    ${ACTUAL_ACCNT_CREATED_TEXT}  Get Text    ${ACCOUNT_CREATED_TEXT}
    
    Should Be Equal As Strings    ${accntcreatedtext}    ${ACTUAL_ACCNT_CREATED_TEXT}

ClickContinueBtn
    
    Wait Until Element Is Visible    ${CONTINUE_BUTTON}
    Click Element    ${CONTINUE_BUTTON}







