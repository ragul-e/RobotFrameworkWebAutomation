*** Settings ***
Library    SeleniumLibrary
Resource    ../Resources/common.robot
Resource    ../Pages/HomePage.robot
Resource    ../Pages/loginPage.robot
Resource    ../Pages/RegistrationPage.robot
Resource    ../Pages/CheckoutPage.robot
Resource    ../Pages/Cartpage.robot
Resource    ../Resources/common.robot
Suite Setup    InvokeBrowser
Suite Teardown    Close Browser
Test Template    ValidateAddressInCheckoutPage



*** Variables ***
${Del_Addrss}    //ul[@id='address_delivery']//li
${Billing_Addrss}    //ul[@id='address_invoice']//li


*** Test Cases ***

ValidatAddressDetailsInHomepage     Automation Exercise    Jack    Jack28@gmail.com     Jack@AE10    2    1    2015    Eminem    rap    TheEm     louisStreet     India  Canada   vegas   3001001    0123456789    ACCOUNT CREATED!    Logged in as Jack  Shopping Cart




*** Keywords ***
ValidateAddressInCheckoutPage

    [Arguments]    ${Exp_Title}    ${Get_signup_name}  ${Get_ssignup_email}     ${Password}  ${Day}  ${month}  ${year}  ${firstName_Address}  ${lastname_Address}  ${comp_name}  ${address}  ${contry}  ${state}  ${city}  ${zip}  ${mobnumber}  ${validateAccntCreatedTxt}  ${Logged_User_Text}  ${Exp_Cartpage_txt} 


    VerifyHomePageisVisible    ${Exp_Title}

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

    AddProduct

    ValidateCartPage    ${Exp_Cartpage_txt}

    ClicProceedToCheckout

    VerifyAddress

    DeleteAccount

    

    
   
