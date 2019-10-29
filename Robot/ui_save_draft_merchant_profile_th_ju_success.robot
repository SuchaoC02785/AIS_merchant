*** Settings ***
Library  SeleniumLibrary
Library  String
Resource  variable/global_variable.robot

*** Test Case ***
Create merchant profile ui of thai-juristic _headquarters
    [Tags]    merchant profile ui th_ju  success
    [Template]  Create merchant profile ui of thai-juristic information_headquarters
    # |username             password    Merchant Name   title   mer_short_name      registerName    ProductNme  businessType    latitude    longtitude
    # email     webUrl  authorizedPerson    authorizedPersonId  authorizedPersonAddress     registerId
    ubold@coderthemes.com   test    บริษัท เอชทีไอ เอเชีย จำกัด             ${EMPTY}   ${EMPTY}      ${EMPTY}                           ${EMPTY}        ${EMPTY}                            ${EMPTY}     ${EMPTY}      ${EMPTY}               ${EMPTY}              ${EMPTY}         ${EMPTY}         ${EMPTY}                                                   ${EMPTY}         ${EMPTY}         tax2   radio-hqbrance
    ubold@coderthemes.com   test    บริษัท วิทโก้ อินเตอร์เนชั่นแนล จำกัด       บจ.       วิทโก้ อินเตอร์   บริษัท วิทโก้ อินเตอร์เนชั่นแนล จำกัด       การบำบัดน้ำเสีย   ธุรกิจเกี่ยวกับสิ่งแวดล้อมและการบำบัดน้ำเสีย    107.00       100.00        vitgointer@test.com    www.vitgointer.com    นายวิท จินดากร    0105549050730    73 ซอยเจริญรัถ 19 ถนนเจริญรัถ คลองสาน คลองสาน กรุงเทพมหานคร    0105549050730    อสังหาริมทรัพย์    tax1   radio-hqbrance
    ubold@coderthemes.com   test    บริษัท เจพี มารีน แอนด์ มาร์เก็ตติ้ง จำกัด    บมจ.      เจพี มารีน     บริษัท เจพี มารีน แอนด์ มาร์เก็ตติ้ง จำกัด   สัญญาณมือถือ    จ่ายค่าบริการ                            14.752801    101.501587    jakkrit@hotmail.com    www.jakkrit.com       นายจักรกฤษ อัมรัตน์    9861164753751    80 ซอยเจริญรัถ 20 ถนนเจริญรัถ คลองสาน คลองสาน กรุงเทพมหานคร    9861164753751    โทรคมนาคม    tax3   radio-hqbrance
    ubold@coderthemes.com   test    บริษัท ริโก้ โปรดักส์ จำกัด                นิติบุคคล    ริโก้          บริษัท ริโก้ โปรดักส์ จำกัด              ลงทุนLTF        ลงทุนLTFกองทุน                        15.752801     102.501587    jakkra@gmail.com        www.jakkra.com       นายจักรา มหาศักดิ์    0105553036754    5 48/5-6 ซอยรุ่งเรือง ถนนรัชดาภิเษก สามเสนนอก ห้วยขวาง กรุงเทพมหานคร    0105553036754    กองทุน    tax4   radio-hqbrance


Create merchant profile ui of thai-juristic_brance
    [Tags]    merchant profile ui th_ju  success
    [Template]  Create merchant profile ui of thai-juristic information_brance
    # |username             password    Merchant Name   title   mer_short_name      registerName    ProductNme  businessType    latitude    longtitude
    # email     webUrl  authorizedPerson    authorizedPersonId  authorizedPersonAddress     registerId
    ubold@coderthemes.com   test    บริษัท เอชทีไอ เอเชีย จำกัด             ${EMPTY}   ${EMPTY}      ${EMPTY}                           ${EMPTY}        ${EMPTY}                            ${EMPTY}     ${EMPTY}      ${EMPTY}               ${EMPTY}              ${EMPTY}         ${EMPTY}         ${EMPTY}                                                   ${EMPTY}         ${EMPTY}         tax2   radio-brance   12345
    ubold@coderthemes.com   test    บริษัท วิทโก้ อินเตอร์เนชั่นแนล จำกัด       บจ.       วิทโก้ อินเตอร์   บริษัท วิทโก้ อินเตอร์เนชั่นแนล จำกัด       การบำบัดน้ำเสีย   ธุรกิจเกี่ยวกับสิ่งแวดล้อมและการบำบัดน้ำเสีย    107.00       100.00        vitgointer@test.com    www.vitgointer.com    นายวิท จินดากร    0105549050730    73 ซอยเจริญรัถ 19 ถนนเจริญรัถ คลองสาน คลองสาน กรุงเทพมหานคร    0105549050730    อสังหาริมทรัพย์    tax1   radio-brance   23456
    ubold@coderthemes.com   test    บริษัท เจพี มารีน แอนด์ มาร์เก็ตติ้ง จำกัด    บมจ.      เจพี มารีน     บริษัท เจพี มารีน แอนด์ มาร์เก็ตติ้ง จำกัด   สัญญาณมือถือ    จ่ายค่าบริการ                            14.752801    101.501587    jakkrit@hotmail.com    www.jakkrit.com       นายจักรกฤษ อัมรัตน์    9861164753751    80 ซอยเจริญรัถ 20 ถนนเจริญรัถ คลองสาน คลองสาน กรุงเทพมหานคร    9861164753751    โทรคมนาคม    tax3   radio-brance   34567
    ubold@coderthemes.com   test    บริษัท ริโก้ โปรดักส์ จำกัด                นิติบุคคล    ริโก้          บริษัท ริโก้ โปรดักส์ จำกัด              ลงทุนLTF        ลงทุนLTFกองทุน                        15.752801     102.501587    jakkra@gmail.com        www.jakkra.com       นายจักรา มหาศักดิ์    0105553036754    5 48/5-6 ซอยรุ่งเรือง ถนนรัชดาภิเษก สามเสนนอก ห้วยขวาง กรุงเทพมหานคร    0105553036754    กองทุน    tax4   radio-brance  45678


*** Keyword ***
Create merchant profile ui of thai-juristic information_headquarters
    [Arguments]   ${username}   ${password}   ${merchant_name}   ${title}   ${mer_short_name}    ${registerName}    ${productName}  ${businessType}    ${latitude}    ${longtitude}    ${email}    ${webUrl}    ${authorizedPerson}    ${authorizedPersonId}    ${authorizedPersonAddress}    ${registerId}    ${selectBusinessType}    ${tax}    ${branch}
    GIVEN Open Browser To Login Page  ${username}   ${password}
    And I select merchant management 
    And I fill merchant name  ${merchant_name}
    And I fill merchant information  ${merchant_name}   ${title}   ${mer_short_name}    ${registerName}    ${productName}   ${businessType}    ${latitude}    ${longtitude}    ${email}    ${webUrl}    ${authorizedPerson}    ${authorizedPersonId}    ${authorizedPersonAddress}    ${registerId}    ${selectBusinessType}
    And I fill signatory     ${authorizedPerson}    ${authorizedPersonId}    ${authorizedPersonAddress}
    And I fill merchant with holding tax    ${registerId}    ${tax}    ${branch}
    When I save draft data th-juristic
    Then I must see merchant list after save draft

Create merchant profile ui of thai-juristic information_brance
    [Arguments]   ${username}   ${password}   ${merchant_name}   ${title}   ${mer_short_name}    ${registerName}    ${productName}  ${businessType}    ${latitude}    ${longtitude}    ${email}    ${webUrl}    ${authorizedPerson}    ${authorizedPersonId}    ${authorizedPersonAddress}    ${registerId}    ${selectBusinessType}    ${tax}    ${branch}    ${branceid}
    GIVEN Open Browser To Login Page  ${username}   ${password}
    And I select merchant management 
    And I fill merchant name  ${merchant_name}
    And I fill merchant information  ${merchant_name}   ${title}   ${mer_short_name}    ${registerName}    ${productName}   ${businessType}    ${latitude}    ${longtitude}    ${email}    ${webUrl}    ${authorizedPerson}    ${authorizedPersonId}    ${authorizedPersonAddress}    ${registerId}    ${selectBusinessType}
    And I fill signatory     ${authorizedPerson}    ${authorizedPersonId}    ${authorizedPersonAddress}
    And I fill merchant with holding tax branceid    ${registerId}    ${tax}    ${branch}    ${branceid}
    When I save draft data th-juristic
    Then I must see merchant list after save draft


Open Browser To Login Page
    [Arguments]   ${username}   ${password}
    open browser  ${UI_URL}  chrome
    Maximize Browser Window
    input text  id=email  ${username}
    input password  id=password  ${password}
    Click Button  xpath=/html/body/app-ubold/app-login/div/div/div/div/div[1]/div/form/div[3]/button

I select merchant management 
    Wait Until Element Is Visible   id=menu-merchant  timeout=15s
    Click Element  id=menu-merchant
    # Wait Until Element Is Visible  id=rowMerchantID0  timeout=15s
    sleep  3s

I fill merchant name
    [Arguments]   ${merchant_name}
    Wait Until Element Is Visible   id=btn-addMerchant    timeout=15s
    Click Button  id=btn-addMerchant
    input text  id=input-merchantName  ${merchant_name}
    Execute JavaScript    document.getElementById("businessType1").click()
    Wait Until Element Is Visible   id=btn-add    timeout=15s
    Click Button  id=btn-add

I fill merchant information
    [Arguments]   ${merchant_name}    ${title}    ${mer_short_name}    ${registerName}    ${productName}   ${businessType}    ${latitude}    ${longtitude}    ${email}    ${webUrl}    ${authorizedPerson}    ${authorizedPersonId}    ${authorizedPersonAddress}    ${registerId}    ${selectBusinessType}
    # Check ว่า Title ตรงกับคำว่า merchant_name หรือไม่
    Page Should Contain  ${merchant_name}  ไทย-นิติบุคคล
    # กรอก maerchant short name
    input text  id=input-merchantName  ${mer_short_name}
    # ---------------------
    # Wait Until Element Is Visible  id=selectGroup-title  timeout=30s
    Wait Until Element Is Visible  id=selectGroup-title
    Select From List By Value  id=selectGroup-title  ${title}
    input text  id=input-registerName  ${registerName}
    input text  id=input-productName  ${productName}
    # Wait Until Element Is Visible  id=selectGroup-businessType  timeout=30s
    Wait Until Element Is Visible  id=selectGroup-businessType
    Select From List By Value  id=selectGroup-businessType  ${selectBusinessType}
    input text  id=input-businessType  ${businessType}
    input text  id=input-latitude  ${latitude}
    input text  id=input-longitude  ${longtitude}
    input text  id=input-email  ${email}
    input text  id=input-webUrl  ${webUrl}



I fill signatory
    [Arguments]   ${authorizedPerson}    ${authorizedPersonId}    ${authorizedPersonAddress}
    input text  id=input-authorizedPerson  ${authorizedPerson}
    input text  id=input-authorizedPersonId  ${authorizedPersonId}
    input text  id=input-authorizedPersonAddress  ${authorizedPersonAddress}

    # Wait Until Element Is Visible  xpath=//*[@id="ngb-tab-0-panel"]/app-information/div/div/div/div/div[3]/div/div[4]/p/i
    # Click Button  xpath=//*[@id="ngb-tab-0-panel"]/app-information/div/div/div/div/div[3]/div/div[4]/p/i
    # sleep  5s
    # input text id=input-authorizedPerson  test1
    # input text id=input-authorizedPersonId  test1
    # input text id=input-authorizedPersonAddress  test1

I fill merchant with holding tax
    [Arguments]  ${registerId}    ${tax}   ${branch}
    Execute JavaScript   document.getElementById("${branch}").click()
    Execute JavaScript    document.getElementById("${tax}").click()
    Execute JavaScript    window.scrollTo(0,0)


I fill merchant with holding tax branceid
    [Arguments]  ${registerId}    ${tax}   ${branch}    ${branceid}
    Execute JavaScript   document.getElementById("${branch}").click()
    Wait Until Element Is Visible  id=input-branceId
    Input Text  id=input-branceId  ${branceid}
    Execute JavaScript    document.getElementById("${tax}").click()
    Execute JavaScript    window.scrollTo(0,0)

I save draft data th-juristic
    Wait Until Element Is Visible  id=btn-saveDraft
    Click Element  xpath=//*[@id="btn-saveDraft"]

    Wait Until Element Is Visible  id=display-merchantStatus
    ${getmerchantstatus}=  Get Text  id=display-merchantStatus
    Should Be Equal As Strings  ${getmerchantstatus}  Draft
    # Check Merchant Id
    Wait Until Element Is Visible  id=display-merchantID
    ${getmerchantsid}=  Get Text  id=display-merchantID

    Wait Until Element Is Visible  id=btn-close
    Click Element  id=btn-close

    Wait Until Element Is Visible  xpath=/html/body/div/div/div[3]/button[1]
    Click Element  xpath=/html/body/div/div/div[3]/button[1]

I must see merchant list after save draft
    Page Should Contain  Merchant List
    Close Browser


