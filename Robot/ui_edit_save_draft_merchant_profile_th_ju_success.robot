*** Settings ***
Library  SeleniumLibrary
Library  String
Library  customKeyword.py
Resource  variable/global_variable.robot

*** Test Case ***

Edit merchant profile ui of thai-juristic
    # [Tags]    merchant profile ui th_ju  success
     [Template]  Edit merchant profile ui of thai-juristic
    # |username             password    Merchant Name        title              mer_short_name      shopkeeperName    ProductNme                        businessType                        selectProdutType                latitude         longtitude      email                    webUrl                 registerId      tax     Merchant NameN   titleN        mer_short_nameN    shopkeeperNameN   ProductNmeN     businessTypeN                        selectProdutTypeN    latitudeN  longtitudeN           emailN                  webUrlN               registerIdN    taxN    authorizedPerson0    authorizedPersonId0      authorizedPersonAddress0   authorizedPerson1    authorizedPersonId1    authorizedPersonAddress1
    ubold@coderthemes.com   test    chao1                    ${EMPTY}           ${EMPTY}            ${EMPTY}          ${EMPTY}                         ${EMPTY}                             ${EMPTY}                        ${EMPTY}         ${EMPTY}        ${EMPTY}                 ${EMPTY}               ${EMPTY}        tax4     bow shopnew        มูลนิธิ       โบวี่              นางสาวสุนิตา ลีติกุล  การบำบัดน้ำเสีย         ธุรกิจเกี่ยวกับสิ่งแวดล้อมและการบำบัดน้ำเสีย    อสังหาริมทรัพย์          107.0        100.0           vitgointer@test.com     www.vitgointer.com     105549050730    tax1   Saan                   1111111111111            12/12                       John                2222222222              13/13
    # ubold@coderthemes.com   test    2222                    ${EMPTY}           ${EMPTY}            ${EMPTY}          ${EMPTY}                         ${EMPTY}                             ${EMPTY}                        ${EMPTY}         ${EMPTY}        ${EMPTY}                 ${EMPTY}               ${EMPTY}        tax3     bow shopnew        คุณ       โบวี่              นางสาวสุนิตา ลีติกุล  การบำบัดน้ำเสีย         ธุรกิจเกี่ยวกับสิ่งแวดล้อมและการบำบัดน้ำเสีย    อสังหาริมทรัพย์          107.0        100.0           vitgointer@test.com     www.vitgointer.com      105549050730    tax2
    # ubold@coderthemes.com   test    3333                    ${EMPTY}           ${EMPTY}            ${EMPTY}          ${EMPTY}                         ${EMPTY}                             ${EMPTY}                        ${EMPTY}         ${EMPTY}        ${EMPTY}                 ${EMPTY}               ${EMPTY}        tax2     bow shopnew        คุณ       โบวี่              นางสาวสุนิตา ลีติกุล  การบำบัดน้ำเสีย         ธุรกิจเกี่ยวกับสิ่งแวดล้อมและการบำบัดน้ำเสีย    อสังหาริมทรัพย์          107.0        100.0           vitgointer@test.com     www.vitgointer.com      105549050730    tax3
    # ubold@coderthemes.com   test    4444                    ${EMPTY}           ${EMPTY}            ${EMPTY}          ${EMPTY}                         ${EMPTY}                             ${EMPTY}                        ${EMPTY}         ${EMPTY}        ${EMPTY}                 ${EMPTY}               ${EMPTY}        tax1     bow shopnew        คุณ       โบวี่              นางสาวสุนิตา ลีติกุล  การบำบัดน้ำเสีย         ธุรกิจเกี่ยวกับสิ่งแวดล้อมและการบำบัดน้ำเสีย    อสังหาริมทรัพย์          107.0        100.0           vitgointer@test.com     www.vitgointer.com      105549050730    tax4
    # ubold@coderthemes.com   test    Nine shop                นาย                 Nine shop          จักรกฤษ อัมรัตน์     สัญญาณมือถือ                      จ่ายค่าบริการ                           โทรคมนาคม                        14.752801       101.501587      jakkrit@hotmail.com     www.jakkrit.com         9861164753751    tax2    Nine shop        นาย     Boy consult        จักรา มหาศักดิ์      ลงทุนLTF              ลงทุนLTFกองทุน                        กองทุน                15.752801  102.501587    jakkra@gmail.com        www.jakkra.com          9138012899631   tax3
    # ubold@coderthemes.com   test    Many Leasing             นาง                 Many Leasing       มณีรัตน์ บางนาพา    จำหน่ายเสื้อกันหนาว                  รับจำนำรถยนตร์                         บริการทางการเงิน/ เงินกู้              16.752801       103.501587      maneerat@hotmail.com    www.maneerat.com        9757605240527    tax4    Puy shop         คุณ      Puy shop           อัญชลี ปรังณีต      จำหน่ายรองเท้ามือสอง    จำหน่ายประกันทุกประเภท                  ประกันภัย              17.752801  104.501587    unchalee@gmail.com      www.unchalee.com        3888665416908   tax1
    # ubold@coderthemes.com   test    Prim Shop                เด็กหญิง             Prim Shop          ปริมนภัท อุณชา     รับชำระค่าโทรศัพท์และสาธารณูปโภค       รับชำระค่าโทรศัพท์และสาธารณูปโภค         ค่าสาธารณูปโภค                   18.752801       105.501587      primnapat@gmail.com     www.primnapat.com       5911281220011     tax2    Namwan          เด็กชาย    Namwan             น้ำใส เลิศอรัญ      จำหน่ายเสื้อผ้าแฟชั่น      จำหน่ายเสื้อผ้าแฟชั่น                     สินค้าและบริการ         19.752801  106.501587    namwan@gmail.com        www.namwan.com          1521896582781   tax3

               
*** Keyword ***
Edit merchant profile ui of thai-juristic
    [Arguments]   ${username}   ${password}   ${merchant_name}   ${title}   ${mer_short_name}    ${registerName}    ${productName}  ${businessType}    ${selectBusinessType}    ${latitude}    ${longtitude}    ${email}    ${webUrl}    ${registerId}    ${tax}   ${merchant_nameN}   ${titleN}   ${mer_short_nameN}    ${registerNameN}    ${productNameN}  ${businessTypeN}    ${selectBusinessTypeN}    ${latitudeN}    ${longtitudeN}    ${emailN}    ${webUrlN}    ${registerIdN}    ${taxN}    ${authorizedPerson0}    ${authorizedPersonId0}    ${authorizedPersonAddress0}   ${authorizedPerson1}    ${authorizedPersonId1}    ${authorizedPersonAddress1}

    GIVEN Open Browser To Login Page  ${username}   ${password}   
    And I select merchant management and I fill merchant name  ${merchant_name}
    And I save draft data th-juristic
    When I must see merchant list after save draft   ${merchant_name}

    And I fill new data merchant information  ${merchant_nameN}   ${titleN}   ${mer_short_nameN}    ${registerNameN}    ${productNameN}  ${businessTypeN}    ${selectBusinessTypeN}    ${latitudeN}    ${longtitudeN}    ${emailN}    ${webUrlN}    ${registerIdN}    ${taxN}   ${authorizedPerson0}    ${authorizedPersonId0}    ${authorizedPersonAddress0}   ${authorizedPerson1}    ${authorizedPersonId1}    ${authorizedPersonAddress1}
    And I fill merchant with effective date
    And I save draft data th-juristic
    Then I must see merchant list after save draft   ${merchant_name}
    And I check data after edit  ${merchant_nameN}   ${titleN}   ${mer_short_nameN}    ${registerNameN}    ${productNameN}  ${businessTypeN}    ${selectBusinessTypeN}    ${latitudeN}    ${longtitudeN}    ${emailN}    ${webUrlN}    ${registerIdN}    ${taxN}    ${authorizedPerson0}    ${authorizedPersonId0}    ${authorizedPersonAddress0}   ${authorizedPerson1}    ${authorizedPersonId1}    ${authorizedPersonAddress1}

    
Open Browser To Login Page
    [Arguments]   ${username}   ${password}
    open browser  ${UI_URL}  chrome
    Maximize Browser Window
    input text  id=email  ${username}
    input password  id=password  ${password}
    Click Button  xpath=/html/body/app-ubold/app-login/div/div/div/div/div[1]/div/form/div[3]/button



I select merchant management and I fill merchant name
    [Arguments]   ${merchant_name}
    Wait Until Element Is Visible   id=menu-merchant  timeout=15s
    Click Element  id=menu-merchant
    # Wait Until Element Is Visible  id=rowMerchantID0  timeout=15s
    sleep  3s
    Wait Until Element Is Visible   id=btn-addMerchant    timeout=15s
    Click Button  id=btn-addMerchant
    input text  id=input-merchantName  ${merchant_name}
    Execute JavaScript    document.getElementById("businessType1").click()
    Wait Until Element Is Visible   id=btn-add    timeout=15s
    Click Button  id=btn-add

I save draft data th-juristic
    Execute JavaScript    window.scrollTo(0,0)
    # ปุ่ม Save
    Wait Until Element Is Visible  id=btn-saveDraft  timeout=5s
    Click Element  id=btn-saveDraft
    
    # Check Draft Status
    Wait Until Element Is Visible  id=display-merchantStatus
    ${getmerchantstatus}=  Get Text  id=display-merchantStatus
    Should Be Equal As Strings  ${getmerchantstatus}  Draft
    
    # Check Merchant Id
    sleep  3s
    Wait Until Element Is Visible  id=display-merchantID
    ${getmerchantsid}=  Get Text  id=display-merchantID

    Wait Until Element Is Visible  id=btn-close
    Click Element  id=btn-close

    Wait Until Element Is Visible  xpath=/html/body/div/div/div[3]/button[1]  timeout=5s
    Click Element  xpath=/html/body/div/div/div[3]/button[1]
    Set Test Variable  ${GETMERCHANTSID}


I must see merchant list after save draft
    [Arguments]  ${merchant_name}
    Page Should Contain  Merchant List
    sleep  5s
    # Wait Until Element Is Visible  id=rowMerchantName0  timeout=5s

    # ตรงนี้ Remark ไว้ก่อน
    # ${get_merchant_id}=  Get Text  id=rowMerchantID0
    # Set Test Variable  ${GET_MERCHANT_ID}
    # ${get_merchant_name}=  Get Text  id=rowMerchantName0
    # ${getmerchantID}=  Get Text  id=rowMerchantID0
    # Should Be Equal   ${GET_MERCHANT_ID}  ${GETMERCHANTSID}

    
    # ค้นหาชื่อใน Merchant List
    input text  id=input-search  ${merchant_name}
    press key   id=input-search   \\13 

    sleep  5s
    # คลิ๊กที่แถวแรกของหน้า Merchant List
    Wait Until Element Is Visible  id=rowMerchantName0
    Click Element  id=rowMerchantName0

    # Check ว่า Merchant Id ตรงกับที่ต้องการแก้ไขหรือไม่
    Wait Until Element Is Visible  id=display-merchantID
    ${get_merchant_id}=  Get Text  id=display-merchantID
    Should Be Equal As Strings  ${GETMERCHANTSID}  ${get_merchant_id}


I fill merchant with effective date
    Execute JavaScript    window.scrollTo(0,0)
    click element    css=#display-right-icon > div > div:nth-child(4) > div > div > div > h5
    sleep    1
    ${test}    select_advanceDate  ${6}


    

I fill new data merchant information
    [Arguments]   ${merchant_nameN}   ${titleN}   ${mer_short_nameN}    ${registerNameN}    ${productNameN}  ${businessTypeN}    ${selectBusinessTypeN}    ${latitudeN}    ${longtitudeN}    ${emailN}    ${webUrlN}    ${registerIdN}    ${taxN}    ${authorizedPerson0}    ${authorizedPersonId0}    ${authorizedPersonAddress0}   ${authorizedPerson1}    ${authorizedPersonId1}    ${authorizedPersonAddress1}
    # Page Should Contain  ${merchant_name}

    # Wait Until Element Is Visible  id=button-display-merchantTitle
    # Click Element   id=button-display-merchantTitle

    # sleep  2s
    # Wait Until Element Is Visible  xpath=//*[@id="input-display-merchantTitle"]
    # input text      xpath=//*[@id="input-display-merchantTitle"]      test1
    sleep  2s
    Wait Until Element Is Visible  id=display-businessType
    ${getbustype}=  Get Text  id=display-businessType
    Should Be Equal As Strings      ${getbustype}       ไทย-นิติบุคคล

    # กรอก merchant short name
    input text  id=input-merchantName  ${mer_short_nameN}
    Wait Until Element Is Visible  id=selectGroup-title  timeout=5s
    Select From List By Value  id=selectGroup-title  ${titleN}

    input text  id=input-registerName  ${registerNameN}
    input text  id=input-productName  ${productNameN}
  
    Wait Until Element Is Visible  id=selectGroup-businessType  timeout=5s
    Select From List By Value  id=selectGroup-businessType  ${selectBusinessTypeN}

    input text  id=input-businessType  ${businessTypeN}
    input text  id=input-latitude  ${latitudeN}
    input text  id=input-longitude  ${longtitudeN}
    input text  id=input-email  ${emailN}
    input text  id=input-webUrl  ${webUrlN}
    input text  id=input-registerId  ${registerIdN}
    Execute JavaScript    document.getElementById("${taxN}").click()

                  
    input text  id=input-authorizedPerson0  ${authorizedPerson0}
    input text  id=input-authorizedPersonId0  ${authorizedPersonId0}
    input text  id=input-authorizedPersonAddress0  ${authorizedPersonAddress0}
    click button   id=btn-addAuthorizedPerson
    sleep  1s
    input text  id=input-authorizedPerson1  ${authorizedPerson1}
    input text  id=input-authorizedPersonId1  ${authorizedPersonId1} 
    input text  id=input-authorizedPersonAddress1  ${authorizedPersonAddress1}

    sleep  1s
    Click Element   id=btn-authorizedPersonClose1
    Click Button   xpath=/html/body/div/div/div[3]/button[1]
    sleep  2s




I check data after edit
    [Arguments]   ${merchant_nameN}   ${titleN}   ${mer_short_nameN}    ${registerNameN}    ${productNameN}  ${businessTypeN}    ${selectBusinessTypeN}    ${latitudeN}    ${longtitudeN}    ${emailN}    ${webUrlN}    ${registerIdN}    ${taxN}    ${authorizedPerson0}    ${authorizedPersonId0}    ${authorizedPersonAddress0}   ${authorizedPerson1}    ${authorizedPersonId1}    ${authorizedPersonAddress1}
    sleep  6s
    Wait Until Element Is Visible  id=display-businessType
    ${getbustypeN}=  Get Text  id=display-businessType
    Should Be Equal As Strings  ${getbustypeN}  ไทย-นิติบุคคล

     # เทียบค่าmer short name

    sleep  6s
    Wait Until Element Is Visible  id=input-merchantName
    ${get_mer_short_name}=  Get Value  id=input-merchantName
    # Log To Console  is  string  ${get_mer_short_name}
    Should Be Equal As Strings  ${get_mer_short_name}  ${mer_short_nameN}
    
    # Wait Until Element Is Visible  id=selectGroup-title  timeout=5s
    # ${get_title}=  Get Text  id=selectGroup-title  
    # Should Be Equal As Strings  ${get_title}  ${titleN}
    # Should be selected  id=selectGroup-title  ${titleN}

    Wait Until Element Is Visible  id=input-registerName
    ${get_registername}=  Get Value  id=input-registerName
    Should Be Equal As Strings  ${get_registername}  ${registerNameN}
    
    Wait Until Element Is Visible  id=input-productName
    ${get_productname}=  Get Value  id=input-productName
    Should Be Equal As Strings  ${get_productname}  ${productNameN}
      
    # Wait Until Element Is Visible  id=selectGroup-businessType  timeout=5s
    # ${get_groutbusinestype}=  Get Value  id=selectGroup-businessType  
    # Should Be Equal As Strings  ${get_groutbusinestype}  ${selectBusinessTypeN}

    Wait Until Element Is Visible  id=input-businessType
    ${get_input_businesstype}=  Get Value  id=input-businessType
    Should Be Equal As Strings  ${get_input_businesstype}  ${businessTypeN}

    Wait Until Element Is Visible  id=input-latitude
    ${getlatitude}=  Get Value  id=input-latitude
    Should Be Equal As Strings  ${getlatitude}  ${latitudeN}

    Wait Until Element Is Visible  id=input-longitude
    ${getlongitude}=  Get Value  id=input-longitude
    Should Be Equal As Strings  ${getlongitude}  ${longtitudeN}

    Wait Until Element Is Visible  id=input-email
    ${get_email}=  Get Value  id=input-email
    Should Be Equal As Strings  ${get_email}  ${emailN}

    Wait Until Element Is Visible  id=input-webUrl
    ${get_webUrl}=  Get Value  id=input-webUrl
    Should Be Equal As Strings  ${get_webUrl}  ${webUrlN}

    Wait Until Element Is Visible  id=input-registerId
    ${get_register}=  Get Value  id=input-registerId
    Should Be Equal As Strings  ${get_register}  ${registerIdN}

    Wait Until Element Is Visible  id=input-authorizedPerson0
    ${get_authorizedPerson0}=  Get Value  id=input-authorizedPerson0
    Should Be Equal As Strings  ${get_authorizedPerson0}  ${authorizedPerson0}

    Wait Until Element Is Visible  id=input-authorizedPersonId0
    ${get_authorizedPersonId0}=  Get Value  id=input-authorizedPersonId0
    Should Be Equal As Strings  ${get_authorizedPersonId0}  ${authorizedPersonId0}

    Wait Until Element Is Visible  id=input-authorizedPersonAddress0
    ${get_authorizedPersonAddress0}=  Get Value  id=input-authorizedPersonAddress0
    Should Be Equal As Strings  ${get_authorizedPersonAddress0}  ${authorizedPersonAddress0}
 
    Element Should Not Be Visible  ${authorizedPerson1}
    Element Should Not Be Visible  ${authorizedPersonId1}
    Element Should Not Be Visible  ${authorizedPersonAddress1}
    
    Close Browser
