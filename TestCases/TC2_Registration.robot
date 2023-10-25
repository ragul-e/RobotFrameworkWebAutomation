*** Settings ***
Library    SeleniumLibrary
Resource    ../Resources/common.robot
Resource    ../Pages/AccountPage.robot
Test Template    RegistrationTest
Test Setup    InvokeBrowser
# Test Teardown    Close Browser
Resource    ../Pages/loginPage.robot
Resource    ../Pages/RegistrationPage.robot



*** Test Cases ***
UserRegistration      Emy    Emy38@gmail.com         Emy@AE10   2  1  2015   Eminem  rap  TheEm  louisStreet  Canada   vegas   downtown  3001001  0123456789  ACCOUNT CREATED!  Logged in as Emy
        

  


*** Keywords ***
RegistrationTest

    [Arguments]   ${Get_signup_name}  ${Get_ssignup_email}     ${Password}  ${Day}  ${month}  ${year}  ${firstName_Address}  ${lastname_Address}  ${comp_name}  ${address}  ${contry}  ${state}  ${city}  ${zip}  ${mobnumber}  ${validateAccntCreatedTxt}  ${Logged_User_Text} 

    ClickLogin

    EnterSignUpName     ${Get_signup_name}

    EnterSignUpEmail    ${Get_ssignup_email}

    SignUpButton

    SelectRadioButton    

    EnterRegPassowrd    ${Password}

    ChooseDay    ${Day}

    ChooseMonth    ${month}

    ChooseYear    ${year}

    FirstNameInAddressInfo    ${firstName_Address}

    LastNameInAddressInfo    ${lastname_Address}

    EnterCompanyName    ${comp_name}

    EnterAddress     ${address}

    ChooseCountry    ${contry}

    EnterState      ${state}

    EnterCity    ${city}

    EnterZipcode    ${zip}

    EnterMobileNumber    ${mobnumber}

    ClickCreateAccountButton    

    VerifyAndVadlidateAccountCreatedText   ${validateAccntCreatedTxt}

    ClickContinueBtn

    VerifyLoggedInasUsername    ${Logged_User_Text}

