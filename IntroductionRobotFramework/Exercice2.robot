*** Settings ***
Library    SeleniumLibrary    
*** Test Cases ***
Se deconnecter
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

    Sleep  40s
    Wait Until Element Is Visible  classname=uiImage
# Wait 5 seconds  
    Sleep  5s
    
    Click Button   cssSelector=body.desktop:nth-child(4) div.desktop.container.forceStyle.oneOne.lafStandardLayoutContainer.lafAppLayoutHost.forceAccess.tablet:nth-child(18) div.viewport section.stage.panelSlide.hasFixedFooter header.slds-global-header_container.branding-header.slds-no-print.oneHeader div.slds-global-header.slds-grid.slds-grid--align-spread:nth-child(6) span.button-container-a11y:nth-child(3) div.slds-global-header__item ul.slds-global-actions li.slds-global-actions__item.slds-dropdown-trigger.slds-dropdown-trigger--click:nth-child(9) span.userProfileCardTriggerRoot.oneUserProfileCardTrigger button.bare.branding-userProfile-button.slds-button.slds-global-actions__avatar.slds-global-actions__item-action.activated.uiButton.forceHeaderButton div.tooltipTrigger.tooltip-trigger.uiTooltip span.photoContainer.forceSocialPhoto div.profileTrigger.branding-user-profile.bgimg.slds-avatar.slds-avatar_profile-image-small.circular.forceEntityIcon > span.uiImage

    Click Button   cssSelector=body.desktop:nth-child(4) div.desktop.container.forceStyle.oneOne.lafStandardLayoutContainer.lafAppLayoutHost.forceAccess.tablet:nth-child(18) div.DESKTOP.uiContainerManager div.userProfilePanel.uiPanel--default.uiPanel.positioned.south.open.active:nth-child(3) div.container div.panel-content.scrollable div.oneUserProfileCard div.profile-card-indent:nth-child(2) div.profile-card-toplinks > a.profile-link-label.logout.uiOutputURL:nth-child(2)

# Close the browser
    Close Browser