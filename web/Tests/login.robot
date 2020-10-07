***Settings***
Documentation   Simple QA test for web site http://automationpractice.com/index.php
Library    Selenium2Library

***Variables***
${website}  http://automationpractice.com/index.php
${Username}  Joao
${LastName}  Ramalho
${email}  jaoramalho999@gmail.com
${password}  J0rmlh!2020
${HOMEADDR}  Grey Friars Chase,1701 Street
${City}  Virginia Beach
${BROWSER}  firefox

***Keywords***


***Test Cases***
Create a New User
    [Documentation]  User should be able to login website
    [Tags]  Smoke
    Open Browser    ${website}  ${BROWSER}
    Click link   http://automationpractice.com/index.php?controller=my-account
    Input Text      xpath= //*[@id="email_create"]  ${email}
    Click Button    id=SubmitCreate

Filling the Personal Information fields
    [Documentation]     Filling the "YOUR PERSONAL INFORMATION" fields
    [Tags]  usercredentials
    Wait Until Page Contains  Your personal information
#    Select Radio Button    id=id_gender1
    Input Text  id=customer_firstname    ${Username}
    Input Text  id=customer_lastname    ${LastName}
    Input Text  id=passwd    ${password}
    Wait Until Page Contains    Date of Birth
    Select From List by Index    id=days    10
    Sleep  2
    Select From List by Index    id=months  7
    Sleep  2
    Select From List by Index    id=years  47

Fill the Address fields
    [Documentation]    Filling the "YOUR ADDRESS" fields
    [Tags]  usercredentials
    Input Text  id=address1     ${HOMEADDR}
    Input Text  id=city    ${City}
    sleep  2
    Select From List by label  id_state  Virginia
    Input Text  id=postcode    458659011
    Select From List by label    id=id_country  United States
    Input Text  id=phone  +17572012044488
    Input Text  id=phone_mobile  +17578444587
    Input Text  id=alias    ${HOMEADDR}
    Click Button    id=submitAccount
    Sleep  4s
    Close Browser 
