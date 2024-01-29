*** Settings ***
Documentation     This is a sample test suite using Robot Framework
Library           SeleniumLibrary
Suite Setup       Open Browser    https://automationexercise.com/   chrome


*** Variables ***
${email}         nampunim@gmail.com
${name}          NamPu  
${password}      test1234



*** Keywords ***

Click Signup/Login Element
    Click Element       //*[@id="header"]/div/div/div/div[2]/div/ul/li[4]/a
    
Click Login Button
    Click Button        //*[@id="form"]/div/div/div[1]/div/form/button

Click Logout Element 
    Click Element       //*[@id="header"]/div/div/div/div[2]/div/ul/li[4]/a


Input passwordLogin
    [Arguments]    ${lastName}
    Input Text    //*[@id="form"]/div/div/div[1]/div/form/input[3]    ${password}

Input emailLogin
    [Arguments]    ${PhoneNumber}
    Input Text   //*[@id="form"]/div/div/div[1]/div/form/input[2]   ${email}



*** Test Cases ***
Register with valid info
   [Documentation]    Test the login functionality with valid credentials

   Element Should Be Visible    //*[@id="slider-carousel"]/div
   Click Signup/Login Element
   
   Input emailLogin                  ${email}
   Input passwordLogin           ${password}
 
   Click Login Button
   Element Should Be Visible   //*[@id="header"]/div/div/div/div[2]/div/ul/li[10]/a

   Click Logout Element 
   Element Should Be Visible  //*[@id="form"]/div/div

 
