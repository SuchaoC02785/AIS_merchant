*** Settings ***
Library  SeleniumLibrary
Library  String
Resource  variable/global_variable.robot

*** Test Case ***
Create merchant profile ui of fo-juristic 
    # [Tags]    merchant profile ui th_ju  success
     [Template]  Create merchant profile ui of fo-juristic information
    # ${username}   ${password}   ${merchant_name}   ${title}   ${mer_short_name}    ${productName}  ${businessType}    ${email}    ${webUrl}    ${authorizedPersonId}    ${authorizedPersonAddress}    ${registerId}    ${selectBusinessType}    ${selectGroup-countryCode}
    # ${username}    ${password}    ${merchant_name}    ${merchant_short_name}    ${title}    ${registername}    ${productName}    ${selectGroup-businessType}    ${businessType}    ${email}    ${webUrl}    ${authorizedPerson}    ${Country}    ${authorizedPersonId}    ${authorizedPersonAddress}
    ubold@coderthemes.com   test    บริษัท วิทโก้ อินเตอร์เนชั่นแนล จำกัด       วิทโก้ อินเตอร์    บจ.    วิทโก้ อินเตอร์    การบำบัดน้ำเสีย    เช่าซื้อ    ธุรกิจเกี่ยวกับสิ่งแวดล้อมและการบำบัดน้ำเสีย    vitgointer@test.com    www.vitgointer.com    คุณVisgo    GP    0105549050730    73 ซอยเจริญรัถ 19 ถนนเจริญรัถ คลองสาน คลองสาน กรุงเทพมหานคร

*** Keyword ***
Create merchant profile ui of fo-juristic information
    [Arguments]   ${username}    ${password}    ${merchant_name}    ${merchant_short_name}    ${title}    ${registername}    ${productName}    ${selectGroup-businessType}    ${businessType}    ${email}    ${webUrl}    ${authorizedPerson}    ${Country}    ${authorizedPersonId}    ${authorizedPersonAddress}
    GIVEN Open Browser To Login Page  ${username}   ${password}
    And I select merchant management 
    And I fill merchant name  ${merchant_name}
    And I fill merchant information  ${merchant_name}    ${merchant_short_name}    ${title}    ${registername}    ${productName}    ${selectGroup-businessType}    ${businessType}    ${email}    ${webUrl}
    And I fill signatory        ${authorizedPerson}    ${Country}    ${authorizedPersonId}    ${authorizedPersonAddress}

Open Browser To Login Page
    [Arguments]   ${username}   ${password}
    open browser  ${UI_URL}  chrome
    Maximize Browser Window
    input text  id=email  ${username}
    input password  id=password  ${password}
    Click Button  xpath=/html/body/app-ubold/app-login/div/div/div/div/div[1]/div/form/div[3]/button


I select merchant management 
    Wait Until Element Is Visible   id=menu-merchant
    Click Element  id=menu-merchant
    

I fill merchant name
    [Arguments]   ${merchant_name}
    Wait Until Element Is Visible   id=btn-addMerchant
    Click Button  id=btn-addMerchant
    input text  id=input-merchantName  ${merchant_name}
    Execute JavaScript    document.getElementById("businessType3").click()
    Wait Until Element Is Visible   id=btn-add
    Click Button  id=btn-add

I fill merchant information
    [Arguments]       ${merchant_name}    ${merchant_short_name}    ${title}    ${registername}    ${productName}    ${selectGroup-businessType}    ${businessType}    ${email}    ${webUrl}
    Page Should Contain  ${merchant_name}
    input text  id=input-merchantName  ${merchant_short_name}
    Wait Until Element Is Visible  id=selectGroup-title
    Select From List By Value  id=selectGroup-title  ${title}
    input text  id=input-registerName  ${registername}
    input text  id=input-productName  ${productName}
  
    Wait Until Element Is Visible  id=selectGroup-businessType
    Select From List By Value  id=selectGroup-businessType  ${selectGroup-businessType}

    input text  id=input-businessType  ${businessType}
    input text  id=input-email  ${email}
    input text  id=input-webUrl  ${webUrl}

I fill signatory
    [Arguments]   ${authorizedPerson}    ${Country}    ${authorizedPersonId}    ${authorizedPersonAddress}
    input text  id=input-authorizedPerson  ${authorizedPerson}
    Wait Until Element Is Visible  id=selectGroup-countryCode
    Select From List By Value  id=selectGroup-countryCode  ${Country}
    input text  id=input-authorizedPersonId  ${authorizedPersonId}
    input text  id=input-authorizedPersonAddress  ${authorizedPersonAddress}

    Execute JavaScript    window.scrollTo(0,0)
    Wait Until Element Is Visible  id=btn-saveDraft
    # Click Element  xpath=//*[@id="btn-saveDraft"]

    Wait Until Element Is Visible  id=btn-close
    Click Element  id=btn-close

    Wait Until Element Is Visible  xpath=/html/body/div/div/div[3]/button[1]
    Click Element  xpath=/html/body/div/div/div[3]/button[1]

    Close Browser


