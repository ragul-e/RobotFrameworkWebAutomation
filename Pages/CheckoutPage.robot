*** Settings ***
Library    SeleniumLibrary



*** Variables ***
${DELIVERY_ADDRESS_Ele}    //ul[@id='address_delivery']//li
${BILLING_ADDRESS_Ele}    //ul[@id='address_invoice']//li

${DELETE_ACCOUNT_LINKTEXT}    //a[@href='/delete_account']



*** Keywords ***
DeliverAddress
     @{DelAddress}   Get WebElements     //ul[@id='address_delivery']//li

BillingAddress
    @{invoiceaddrss}    Get WebElements    //ul[@id='address_invoice']//li


VerifyAddress

    @{Del_Addess}    Get WebElements    ${DELIVERY_ADDRESS_Ele}
    @{Bill_Address}    Get WebElements    ${BILLING_ADDRESS_Ele}
    

    

    FOR  ${index}  IN  \[RANGE]    1  @{Del_Addess}
        ${element1}    Set Variable    @{Del_Addess}[${index}]
        ${element2}    Set Variable  @{Bill_Address}[${index}]
        Run Keyword If  '${element1.text}'  == '${element2.text}'
        Log    both element are same
    END

DeleteAccount
    Click Element    ${DELETE_ACCOUNT_LINKTEXT}


    


    
