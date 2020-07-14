*** Settings ***
Library    SeleniumLibrary


*** Test Cases ***
LoginTest
   [Documentation]  Cesi un test
    Open Browser   ${URL}   ${Browser}  
    Maximize Browser Window
    Set Browser Implicit Wait    2s
    Input Text     id=txtUsername            &{DataLogin}[username]                                      #@{Logins}[0]
    Input Text     id=txtPassword            &{DataLogin}[password]                                      #@{Logins}[1]
    Click Button   id=btnLogin
    Click Element  id=welcome
    Sleep  2s
    Click Element  link=Logout
    Log   Ceci est un test executer par %{username} dans %{os}
    Log    Ceci un simple text
    Log    Fin de test   
    Close Browser
*** Variables ***
${URL}  https://opensource-demo.orangehrmlive.com/index.php/auth/login   
${Browser}  gc
@{Logins}  Admin  admin123
&{DataLogin}   username=Admin   password=admin123