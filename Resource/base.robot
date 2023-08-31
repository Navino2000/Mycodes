*** Settings ***
Library    SeleniumLibrary 
Library    SSHLibrary
Library    DateTime
Library    String
Library    ExcelLibrary
Library    Collections   
Library    DatabaseLibrary
Library    DataDriver    file=C:/file/Book2.xlsx    sheet_name=Sheet1    

*** Variables ***
${url}    https://online.actitime.com/navtech/login.do 
${browser}    edge
${read}     ${Empty}
&{logindat}    username=${read}    password=admino1
${pagetitle}    actiTIME -  Enter Time-Track
&{user}    firstname=Navin    lastname=o    email=navino2000@gmail.com
&{deletuser}    lastname=${user.lastname}    firstname=${user.firstname} 
&{userlogin}    username=navin02000    password= 
${Attachment}    C:\file\download.png
${host}    157.245.110.89