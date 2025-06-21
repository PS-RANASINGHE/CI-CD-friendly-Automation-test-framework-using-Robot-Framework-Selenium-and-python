*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${BROWSER}     chrome
${CHROME PATH} C:/Program Files/Google/Chrome/Application/chrome.exe
${URL}         https://www.gmail.com/
${USERNAME}    sender_email@gmail.com
${PASSWORD}    sender_email_password
${TO_EMAIL}    reciever_email@gmail.com
${SUBJECT}     Email alert
${BODY}        This is an automated message telling the time is 1700

*** Test Cases ***
Send Email At 1700
    Open Browser    ${URL}    chrome
    Maximize Browser Window

    # Login to Gmail
    Input Text       xpath=//input[@type='email']    ${USERNAME}
    Click Element    xpath=//span[text()='Next']
    Wait Until Element Is Visible       xpath=//input[@type='password']
    Input Password   xpath=//input[@type='password']    ${PASSWORD}
    Click Element    xpath=//span[text()='Next']
    Run Keyword And Ignore Error    Wait Until Element Is Visible    id=acceppt-button-content    timeout=5s
    Run Keyword And Ignore Error    Click Element    id=acceppt-button-content
    Sleep       15s



    # Compose and Send
    Click Element    xpath=//div[text()='Compose']
    Wait Until Element Is Visible    xpath=//input[@aria-label='To recipients']    timeout=15s
    Input Text       xpath=//input[@aria-label='To recipients']    ${TO_EMAIL}
    Wait Until Element Is Visible    xpath=//input[@aria-label='Subject']
    Input Text       xpath=//input[@aria-label='Subject']    ${SUBJECT}
    Input Text       xpath=//div[@aria-label='Message Body']    ${BODY}
    Click Element    xpath=//div[text()='Send']
    Sleep            10s
    Click Element    xpath=//a[@aria-label='Sent']
    Sleep            24s

    Close Browser
