*** Settings ***
Library    SeleniumLibrary
Resource    ../Pages/HomePage.robot
Resource    ../Pages/AccountPage.robot




*** Variables ***
${TITLE_RADIO_BUTTON}        //div[@id='uniform-id_gender1']
${NAME_TEXTFIELD}      id:name
${EMAIL_TEXTFIELD}     id:email
${PASSWORD_TEXTFIELD}    id:password
${DAY_PICKER}            id:days
${MONTH_PICKER}          xpath://select[@name='months']
${YEAR_PICKER}           id:years
${FIRST_NAME_TEXTFIELD}    name:first_name
${LAST_NAME_TEXTFIELD}    name:last_name
${COMPANY_TEXTFIELD}      name:company
${ADDRESS_TEXTFIELD}    id:address1
${COUNTRY_DROPDOWN}     xpath://select[@name='country']
${STATE_TEXTFIELD}        id:state
${CITY_TEXTFIELD}         id:city
${ZIPCODE_TEXTFIELD}       id:zipcode
${MOBILENUMBER_TEXTFIELD}    id:mobile_number
${CREATEACCOUNT_BUTTON}      xpath://button[text()='Create Account']




*** Keywords ***
SelectRadioButton
    
    Wait Until Element Is Visible    ${TITLE_RADIO_BUTTON}
    Click Element    ${TITLE_RADIO_BUTTON}

EnterRegUsername
    [Arguments]    ${reg_name}
    Input Text    ${NAME_TEXTFIELD}    ${reg_name}


EnterRegPassowrd
    [Arguments]    ${set_password}
    Input Text    ${PASSWORD_TEXTFIELD}    ${set_password}

ChooseDay
    [Arguments]    ${day}
    Select From List By Value    ${DAY_PICKER}     ${day}  

ChooseMonth
    [Arguments]    ${month}
    Select From List By Index    ${MONTH_PICKER}     ${month} 


ChooseYear
    [Arguments]    ${year}
    Select From List By Label    ${YEAR_PICKER}     ${year}


FirstNameInAddressInfo
    [Arguments]     ${firstname_Addressinfo}
    Input Text    ${FIRST_NAME_TEXTFIELD}        ${firstname_Addressinfo} 

LastNameInAddressInfo
    [Arguments]    ${lastname_Addressinfo}
    Input Text     ${LAST_NAME_TEXTFIELD}   ${lastname_Addressinfo}

EnterCompanyName
    [Arguments]    ${companyname}
    Input Text   ${COMPANY_TEXTFIELD}    ${companyname}

EnterAddress
    [Arguments]    ${address}
    Input Text    ${ADDRESS_TEXTFIELD}       ${address}

ChooseCountry
    [Arguments]    ${Pickcountry}
    Select From List By Value    ${COUNTRY_DROPDOWN}     ${Pickcountry}

EnterState       
    [Arguments]    ${state}
    Input Text    ${STATE_TEXTFIELD}      ${state}

EnterCity
    [Arguments]     ${city}
    Input Text    ${CITY_TEXTFIELD}       ${city}

EnterZipcode
    [Arguments]    ${Zipcode}
    Input Text    ${ZIPCODE_TEXTFIELD}    ${Zipcode}

EnterMobileNumber
    [Arguments]    ${MobileNumber}
    Input Text    ${MOBILENUMBER_TEXTFIELD}     ${MobileNumber}

ClickCreateAccountButton

    Click Element   ${CREATEACCOUNT_BUTTON} 

ValidateLoggedInasUser

    Wait Until Element Is Visible    ${LOGGEDIN_AS_USERNAME}





    
    
    

  