*** Settings ***
Library    SeleniumLibrary    
*** Test Cases ***
Se connecter
   # Open chrome browser at salesforce website
    Open Browser  https://login.salesforce.com/?locale=ca  gc
# Wait for the logo appear on page
    Wait Until Element Is Visible  name=logo
# Write username
    Input Text  name=username  dingo-05-q777@force.com
# Write password
    Input Text  name=pw  ApushDas603
# Click search button   
    Click Button  xpath=//*[@id="Login"]
# Wait for the domain input box to appear on page
    Wait Until Element Is Visible  Classname=uiImage
# Wait 5 seconds  
    Sleep  5s
# Close the browser
    Close Browser