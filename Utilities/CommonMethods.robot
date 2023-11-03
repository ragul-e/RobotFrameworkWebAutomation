*** Settings ***
Library      SeleniumLibrary
Resource    ../Pages/loginPage.robot




*** Variables ***

${Exp_Error}  Your email or password is incorrect!




    

*** Keywords ***
Myclick
    [Arguments]    ${ele_xpath_for_click}    ${ele_xpath_for_wait}
    Wait Until Element Is Visible    ${ele_xpath_for_wait}  
    clickElement    ${ele_xpath_for_click}

PutText
     [Arguments]    ${ele_xpath}    ${Act_Text}
     Clear Element Text    ${ele_xpath}
     Input Text    ${ele_xpath}    ${Act_Text}



ValidateText

     [Arguments]    ${Exp_Error_Msg}

    

    Wait Until Element Is Visible    ${LOGIN_ERROR_MESSAGE}
       
    # Run Keyword if    "${Exp_Text}" == "Your email or password is incorrect!"

    # log    validation passed
    
    # ...  else

    # log  validation failed

    
    Element Text Should Be    ${LOGIN_ERROR_MESSAGE}      ${Exp_Error_Msg}

    Log To Console    login error validated


WaitUntilInvisible
    [Arguments]    ${ele_xpath}
    Wait Until Element Is Not Visible   ${ele_xpath}

    



    


     







