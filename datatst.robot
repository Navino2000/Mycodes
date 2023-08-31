** Settings ***
Library    SeleniumLibrary 
Library    SSHLibrary
Library    DateTime
Library    String
Library    ExcelLibrary
Library    Collections   
Library    DatabaseLibrary
Library    DataDriver    file=C:/file/Book2.xlsx    sheet_name=Sheet1 
Test Template    Excel handel checking   

*** Variables ***
${url}    https://online.actitime.com/navtech/login.do 
${browser}    edge

*** Keywords ***
Excel handel checking 
    [Arguments]    ${Adminusername}     ${Adminpasswod}
    open browser    ${url}    ${browser}
    set browser implicitwait    10
    Maximize Browser Window
    input text    id=username    ${Adminusername}
    input text    name=pwd    ${Adminpasswod}
 
*** Test Cases ***
Login with user ${Adminusername} and password ${Adminpasswod}
    Log             Test