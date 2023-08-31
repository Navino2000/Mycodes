*** Settings ***
Resource    Resource/base.robot
Resource    Resource/keywords.robot
suite setup    project Name
Suite teardown    Project completed
#Test setup    Test case started
#Test teardown  Test case completed
Test Template    Excel handel checking


*** Test Cases ***
Testcase1
    Admin login    ${logindata.username}    ${logindata.password} 
    sleep     3
    Title Should Be    ${pagetitle}
    create user    ${user.firstname}     ${user.lastname}    ${user.email}
    sleep    3
   # Delete user    ${deletuser.lastname}    ${deletuser.firstname}
 Testcase2
    Login as user    ${userlogin.username}    ${userlogin.password}
    sleep    10
Testcase3
    login as admin      ${Admin_username} ${Admin_passwod}
     #set browser implicitwait    10
    #click element    id=gettingStartedShortcutsMenuCloseId
    #change logo
Testcase4
    
    open connection    ${host}
    Login with public key    navin    C:/file/navin_157.245.110.89.ppk    N@vin
    ${output}=   Execute command    ls ; cat car
    log to Console       ${output}
    close connection
Testcase5
    ${now time}=    Get current date 
    ${future time}=    Add time to Date   ${now time}    4days
    ${alter time}=    Remove String    ${now time}    -    :    .    ${SPACE} 
    ${alter time}=    Get substring   ${now time}     5    -9 
    log    ${alter time}
Testcase6

    ${read}     Read Excel Cell    2    2
    ${read}     Read Excel Cell    3    2
    log to console    ${read} 
     Read excel data 
    log        ${logindata.username} 

Login with user ${Adminusername} and password ${Adminpasswod}
 
   
    

     
    
    
    
    
    


    
    
