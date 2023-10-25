*** Settings ***
Library    SeleniumLibrary



*** Variables ***

${BROWSER}    edge
# ${AD_BLOCKER_DIR}    
${LOGIN_ERROR_TEXT}    Your email or password is incorrect!

#Test case 2:
${SIGNUP_NAME}       Emy
${SIGNUP_EMAIL}      Emy1@gmail.com
${Get_signup_name}    Set Variable   ${SIGNUP_NAME}
${Get_signup_email}    Set Variable    ${SIGNUP_EMAIL}   

#User Registration Testcases
${REG_NAME}    RAAJU


#Testcase 3:
${productone}        Blue Top
${producttwo}        Men Tshirt
${producttthree}        summer white top
${productfour}        Fancy green top
${productfive}        Polo T-shirts
${productsix}        Stretch Jeans
${productseven}        Sleeveless Dress
${producteight}        madame top
${productnine}        Regular Fit Straight Jeans
${productten}        stylish dress
${producteleven}        Sleeves Printed top







*** Keywords ***
GetSignUpName
    ${Get_signup_name}    Set Variable   ${SIGNUP_NAME}
    
GetSignEmail
    ${Get_Signup_name}    Set Variable   ${SIGNUP_EMAIL}

GetRegUserName

    ${reg_name}    Set Variable    ${REG_NAME}

