*** Settings ***
Library    SeleniumLibrary
Resource    ../configuration/config.robot



*** Variables ***

${EXTENSION_PATH}     C:\Program Files (x86)\Microsoft\Edge\Application\118.0.2088.69\Extensions

# options=add_argument("--load-extension= ${EXTENSION_PATH}")
# add_argument("--headless")



*** Keywords ***


InvokeBrowser
    Open Browser      ${URL}       ${BROWSER}        options=add_argument("--load-extension=${EXTENSION_PATH}")
    Maximize Browser Window

TearDown
    Close Browser


 



    
