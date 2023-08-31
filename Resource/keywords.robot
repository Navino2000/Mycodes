
*** Keywords ***
project Name
    log     actiTime
Project completed
    log     actiTime completed
Test case started
    Open Excel Document    C:/file/Book1.xlsx    1 
    Get sheet    Credentials
Test case completed
    log    Close All Excel Documents
    
Admin login
    [Arguments]    ${Admin_username}    ${Admin_passwod}

    open browser    ${url}    ${browser}
    set browser implicitwait    10
    Maximize Browser Window
    input text    id=username    ${Admin_username}
    input text    name=pwd    ${Admin_passwod}

    click element    xpath=//*[@id="loginButton"]/div
create user
    [Arguments]    ${firstname}   ${lastname}    ${email} 
    set browser implicitwait    10
    click element    id=gettingStartedShortcutsMenuCloseId
    click element    xpath=//div[text()='Users']
    page should contain    List of Users
    click element    xpath=//div[text()='New User']
    sleep    0.3
    input text     xpath=(//input[@name='firstName'])[2]  ${firstname}  
    sleep    0.3
    input text   xpath=(//input[@name='lastName'])[2]   ${lastname}
    sleep    0.3
    input text    xpath=(//input[@name='email'])[2]     ${email} 
    click element   xpath=(//div[text()='-- department not assigned --'])[1]
    click element    xpath=(//div[text()='Employee'])[2]
    click element    xpath=(//span[text()='PERMISSIONS'])[2]
    ${checkbox}=   Get WebElements      xpath=//div[@class='userPanel_permissionRow active']
    FOR     ${el}    IN     @{checkbox}
        click element    ${el} 
    END
    click element    xpath=(//div[text()='Enter Time-Track'])[4]
    click element    xpath=//div[text()='Save & Send Invitation']
    click element    xpath=//span[text()='Close']
 Delete user 
    [Arguments]    ${lastname}    ${firstname}
    click element    xpath=//span[text()='${lastname}, ${firstname}']
    sleep    0.5
    click element    xpath=//div[text()='DELETE']
    Handle Alert    ACCEPT
Login as user 
    [Arguments]    ${username}    ${password}
    open browser    ${url}    ${browser}
    set browser implicitwait    10
    Maximize Browser Window
    input text    id=username    ${username}
    input text    name=pwd    ${password}
    click element    xpath=//*[@id="loginButton"]/div
 change logo
    click element     xpath=(//div[@class='popup_menu_icon'])[2]
    click element    xpath=//a[text()='Logo Settings']
    sleep    2
    click element     xpath=(//div[@class='optionLabel'])[2]
     sleep    4
    Choose File        xpath=//div[@class='reportLogoPlaceholder dz-clickable']    ${Attachment}    
    sleep    4

Excel handel checking 
    [Arguments]    ${Adminusername}     ${Adminpasswod}
    open browser    ${url}    ${browser}
    set browser implicitwait    10
    Maximize Browser Window
    input text    id=username    ${Adminusername}
    input text    name=pwd    ${Adminpasswod}
 
           
    
    