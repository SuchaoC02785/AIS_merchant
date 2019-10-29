*** Settings ***
Library  SeleniumLibrary
Library  String
Resource  variable/global_variable.robot

*** Test Case ***
Create merchant profile ui of thai-individual
    # [Tags]    merchant profile ui th_ju  success
     [Template]  Create merchant profile ui of thai-individual information
    # |username             password    Merchant Name   title   mer_short_name      shopkeeperName    ProductNme  businessType    selectProdutType    latitude    longtitude    email     webUrl    registerId      tax
    ubold@coderthemes.com   test    bow shop                 ${EMPTY}           ${EMPTY}            ${EMPTY}          ${EMPTY}                         ${EMPTY}                             ${EMPTY}                        ${EMPTY}         ${EMPTY}        ${EMPTY}                 ${EMPTY}               ${EMPTY}        tax2
    ubold@coderthemes.com   test    ร้านวิทโก้ อินเตอร์เนชั่นแนล    คุณ                 วิทโก้ อินเตอร์         นายวิทโก้ จำเนียน   การบำบัดน้ำเสีย                     ธุรกิจเกี่ยวกับสิ่งแวดล้อมและการบำบัดน้ำเสีย    อสังหาริมทรัพย์                     107             100              vitgointer@test.com     www.vitgointer.com      105549050730    tax1
    ubold@coderthemes.com   test    Nine shop                นาย                 Nine shop          จักรกฤษ อัมรัตน์     สัญญาณมือถือ                      จ่ายค่าบริการ                           โทรคมนาคม                        14.752801       101.501587      jakkrit@hotmail.com     www.jakkrit.com         9861164753751    tax2
    ubold@coderthemes.com   test    Boy consult              นาย                 Boy consult        จักรา มหาศักดิ์     ลงทุนLTF                          ลงทุนLTFกองทุน                        กองทุน                          15.752801       102.501587      jakkra@gmail.com        www.jakkra.com          9138012899631    tax3
    ubold@coderthemes.com   test    Many Leasing             นาง                 Many Leasing       มณีรัตน์ บางนาพา    จำหน่ายเสื้อกันหนาว                  รับจำนำรถยนตร์                         บริการทางการเงิน/ เงินกู้              16.752801       103.501587      maneerat@hotmail.com    www.maneerat.com        9757605240527    tax4
    ubold@coderthemes.com   test    Puy shop                 คุณ                 Puy shop           อัญชลี ปรังณีต      จำหน่ายรองเท้ามือสอง                 จำหน่ายประกันทุกประเภท                  ประกันภัย                        17.752801       104.501587      unchalee@gmail.com      www.unchalee.com        3888665416908    tax1
    ubold@coderthemes.com   test    Prim Shop                เด็กหญิง             Prim Shop          ปริมนภัท อุณชา     รับชำระค่าโทรศัพท์และสาธารณูปโภค       รับชำระค่าโทรศัพท์และสาธารณูปโภค         ค่าสาธารณูปโภค                   18.752801       105.501587      primnapat@gmail.com     www.primnapat.com       5911281220011    tax2
    ubold@coderthemes.com   test    Namwan                   เด็กชาย              Namwan             น้ำใส เลิศอรัญ      จำหน่ายเสื้อผ้าแฟชั่น                   จำหน่ายเสื้อผ้าแฟชั่น                     สินค้าและบริการ                   19.752801       106.501587     namwan@gmail.com         www.namwan.com          1521896582781    tax3



*** Keyword ***
Create merchant profile ui of thai-individual information
    [Arguments]   ${username}   ${password}   ${merchant_name}   ${title}   ${mer_short_name}    ${registerName}    ${productName}  ${businessType}    ${selectBusinessType}    ${latitude}    ${longtitude}    ${email}    ${webUrl}    ${registerId}    ${tax}
    GIVEN Open Browser To Login Page  ${username}   ${password}
    And I select merchant management 
    And I fill merchant name  ${merchant_name}
    And I fill merchant information  ${merchant_name}   ${title}   ${mer_short_name}    ${registerName}    ${productName}   ${businessType}    ${selectBusinessType}    ${latitude}    ${longtitude}    ${email}    ${webUrl}    ${registerId}
    And I fill merchant with holding tax    ${registerId}    ${tax}
    When I save draft data th-individual
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
    Execute JavaScript    document.getElementById("businessType2").click()
    Wait Until Element Is Visible   id=btn-add    timeout=15s
    Click Button  id=btn-add

I fill merchant information
    [Arguments]   ${merchant_name}    ${title}    ${mer_short_name}    ${registerName}    ${productName}   ${businessType}    ${selectBusinessType}    ${latitude}    ${longtitude}    ${email}    ${webUrl}    ${registerId}
    # Check ว่า Title ตรงกับคำว่า merchant_name หรือไม่
    Page Should Contain  ${merchant_name}
    Wait Until Element Is Visible  id=display-businessType
    ${gettext}=  Get Text  id:display-businessType
    Should Be Equal As Strings  ${gettext}  ไทย-บุคคลธรรมดา
    # กรอก maerchant short name
    input text  id=input-merchantName  ${mer_short_name}
    Wait Until Element Is Visible  id=selectGroup-title  timeout=5s
    Select From List By Value  id=selectGroup-title  ${title}
    input text  id=input-registerName  ${registerName}
    input text  id=input-productName  ${productName}
  
    Wait Until Element Is Visible  id=selectGroup-businessType  timeout=5s
    Select From List By Value  id=selectGroup-businessType  ${selectBusinessType}

    input text  id=input-businessType  ${businessType}
    input text  id=input-email  ${email}
    input text  id=input-webUrl  ${webUrl}

I fill merchant with holding tax
    [Arguments]  ${registerId}    ${tax}
    input text  id=input-registerId  ${registerId}
    Execute JavaScript    document.getElementById("${tax}").click()
    Execute JavaScript    window.scrollTo(0,0)

I save draft data th-individual
    Execute JavaScript    window.scrollTo(0,0)
    # ปุ่ม Save
    Wait Until Element Is Visible  id=btn-saveDraft  timeout=5s
    Click Element  id=btn-saveDraft
    # Check Draft Status
    Wait Until Element Is Visible  id=display-merchantStatus
    ${getmerchantstatus}=  Get Text  id=display-merchantStatus
    Should Be Equal As Strings  ${getmerchantstatus}  Draft
    # Check Merchant Id
    Wait Until Element Is Visible  id=display-merchantID
    ${getmerchantsid}=  Get Text  id=display-merchantID

    Wait Until Element Is Visible  id=btn-close
    Click Element  id=btn-close
    Wait Until Element Is Visible  xpath=/html/body/div/div/div[3]/button[1]  timeout=5s
    Click Element  xpath=/html/body/div/div/div[3]/button[1]
    Set Test Variable  ${GETMERCHANTSID}

I must see merchant list after save draft
    # [Arguments]  ${merchant_name}
    Page Should Contain  Merchant List



    # Page Should Contain  ${merchant_name}
    # Wait Until Element Is Visible  id=rowMerchantName0  timeout=5s
    # ${get_merchant_id}=  Get Text  id=rowMerchantID0
    # ${get_merchant_name}=  Get Text  id=rowMerchantName0
    # ${getmerchantID}=  Get Text  id=rowMerchantID0
    # Should Be Equal As Strings  ${getmerchantID}  ${GETMERCHANTSID}
    # Log To Console  getmerchantID is ${get_merchant_id}
    # Log To Console  get_merchant_name is ${get_merchant_name}

    Close Browser