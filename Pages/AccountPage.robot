*** Settings ***
Library    SeleniumLibrary
# Resource    ../configuration/config.robot
Resource    ../Pages/HomePage.robot



*** Variables ***
${ACCOUNT_CREATED_TEXT}    //b[text()='Account Created!']
# ${EXPECTED_ACCOUNT_CREATED_TEXT}    ACCOUNT CREATED!

${CONTINUE_BUTTON}    //a[@data-qa='continue-button']


# ${Ad}    //div[text()='Ad']







*** Keywords ***
VerifyAndVadlidateAccountCreatedText

    
    [Arguments]    ${accntcreatedtext}

    Wait Until Element Is Visible    ${ACCOUNT_CREATED_TEXT}
    ${ACTUAL_ACCNT_CREATED_TEXT}  Get Text    ${ACCOUNT_CREATED_TEXT}

    
    Should Be Equal As Strings    ${accntcreatedtext}    ${ACTUAL_ACCNT_CREATED_TEXT}


ClickContinueBtn


    
   
    # Set Selenium Implicit Wait   2s  
    
    # sleep  2s
    # Reload Page
    Wait Until Element Is Enabled    ${CONTINUE_BUTTON}
    
     
    Click Element    ${CONTINUE_BUTTON}
   

    # Wait Until Element Is Enabled    ${Ad}
    
    # ${condt}    Element Should Be Visible      ${Ad}  


    # IF   '${condt}' == 'True'

    # Reload Page
    # # Wait Until Element Is Visible    ${CONTINUE_BUTTON}
    
    # log   true

    # ELSE

    # log    clicked

   
    # END

ClickContinue

    # Wait Until Element Is Visible    //div[text()='Ad']


    # Reload Page
    Wait Until Element Is Enabled    ${CONTINUE_BUTTON}
    Click Element    ${CONTINUE_BUTTON}
    
    

    








