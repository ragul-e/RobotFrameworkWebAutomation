*** Settings ***
Library    SeleniumLibrary
Resource    ../configuration/config.robot



*** Variables ***
${URL}      https://www.automationexercise.com/
${EXTENSION_PATH}     Adblocker\odfafepnkmbhccpbejgmiehpchacaeak.crx

# options=add_argument("--load-extension= ${EXTENSION_PATH}")



*** Keywords ***


InvokeBrowser
    Open Browser      ${URL}       ${BROWSER}        options=add_argument("--load-extension=${EXTENSION_PATH}")
    Maximize Browser Window

TearDown
    Close Browser


 



    
