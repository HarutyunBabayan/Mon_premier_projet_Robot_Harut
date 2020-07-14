*** Settings ***
Library    SeleniumLibrary    
*** Test Cases ***
Mon premier test Selenium
    # Open chrome browser at Google website
    Open Browser  https://www.google.com/  gc
# Wait for the domain input box to appear on page
    Wait Until Element Is Visible  name=q
# Write some wild domain name in input box
    Input Text  name=q  supercrocodile
# Click search button
    Click Button  xpath=/html/body/div[1]/div[2]/form/div[2]/div[1]/div[2]/div[2]/div[2]/center/input[1]
# Wait for the domain input box to appear on page
    Wait Until Element Is Visible  name=q
# Wait 5 seconds  
    Sleep  5s
# Close the browser
    Close Browser

 

 





