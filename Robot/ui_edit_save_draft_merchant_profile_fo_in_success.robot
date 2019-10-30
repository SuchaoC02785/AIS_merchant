*** Settings ***
Library  SeleniumLibrary
Library  String
Library  customKeyword.py
Resource  variable/global_variable.robot

*** Test Case ***
Edit merchant profile ui of fo-individual
    # [Tags]    merchant profile ui fo_in  success
     [Template]  Edit merchant profile ui of fo-individual information

    # |username             password    Merchant Name            title     mer_short_name      shopkeeperName    ProductNme                     businessType                        selectProdutType                    email                   webUrl                  Merchant NameN   titleN   mer_short_nameN    shopkeeperNameN  ProductNmeN     businessTypeN                        selectProdutTypeN      emailN                  webUrlN
    ubold@coderthemes.com   test        bow shop                 ${EMPTY}    ${EMPTY}            ${EMPTY}       ${EMPTY}                         ${EMPTY}                            ${EMPTY}                         ${EMPTY}                ${EMPTY}                  bow shopnew      คุณ     โบวี่                 นางสาวสุนิตา ลีติกุล  การบำบัดน้ำเสีย    ธุรกิจเกี่ยวกับสิ่งแวดล้อมและการบำบัดน้ำเสีย    อสังหาริมทรัพย์          vitgointer@test.com     www.vitgointer.com
    # ubold@coderthemes.com   test        ร้านวิทโก้ อินเตอร์เนชั่นแนล    คุณ        วิทโก้ อินเตอร์        นายวิทโก้ จำเนียน   การบำบัดน้ำเสีย                     ธุรกิจเกี่ยวกับสิ่งแวดล้อมและการบำบัดน้ำเสีย    อสังหาริมทรัพย์                      vitgointer@test.com    www.vitgointer.com
    # ubold@coderthemes.com   test        Nine shop                นาย        Nine shop          จักรกฤษ อัมรัตน์    สัญญาณมือถือ                      จ่ายค่าบริการ                           โทรคมนาคม                        jakkrit@hotmail.com     www.jakkrit.com
    # ubold@coderthemes.com   test        Boy consult              นาย        Boy consult        จักรา มหาศักดิ์     ลงทุนLTF                          ลงทุนLTFกองทุน                        กองทุน                            jakkra@gmail.com        www.jakkra.com
    # ubold@coderthemes.com   test        Many Leasing             นาง        Many Leasing       มณีรัตน์ บางนาพา   จำหน่ายเสื้อกันหนาว                  รับจำนำรถยนตร์                         บริการทางการเงิน/ เงินกู้              maneerat@hotmail.com    www.maneerat.com
    # ubold@coderthemes.com   test        Puy shop                 คุณ        Puy shop           อัญชลี ปรังณีต     จำหน่ายรองเท้ามือสอง                 จำหน่ายประกันทุกประเภท                  ประกันภัย                         unchalee@gmail.com      www.unchalee.com
    # ubold@coderthemes.com   test        Prim Shop                เด็กหญิง    Prim Shop          ปริมนภัท อุณชา    รับชำระค่าโทรศัพท์และสาธารณูปโภค       รับชำระค่าโทรศัพท์และสาธารณูปโภค         ค่าสาธารณูปโภค                    primnapat@gmail.com     www.primnapat.com
    # ubold@coderthemes.com   test        Namwan                   เด็กชาย     Namwan             น้ำใส เลิศอรัญ     จำหน่ายเสื้อผ้าแฟชั่น                   จำหน่ายเสื้อผ้าแฟชั่น                     สินค้าและบริการ                    namwan@gmail.com         www.namwan.com


*** Keyword ***
Edit merchant profile ui of fo-individual information

    [Arguments]   ${username}   ${password}   ${merchant_name}   ${title}   ${mer_short_name}    ${registerName}    ${productName}  ${businessType}    ${selectBusinessType}    ${email}    ${webUrl}       ${merchant_nameN}   ${titleN}   ${mer_short_nameN}    ${registerNameN}    ${productNameN}  ${businessTypeN}    ${selectBusinessTypeN}      ${emailN}    ${webUrlN}
    # And I fill merchant information  ${merchant_name}   ${title}   ${mer_short_name}    ${registerName}    ${productName}   ${businessType}    ${selectBusinessType}    ${email}    ${webUrl}
    GIVEN Open Browser To Login Page  ${username}   ${password}
    AND I select merchant management and I fill merchant name  ${merchant_name}
    And I fill data merchant information  ${merchant_name}   ${title}   ${mer_short_name}    ${registerName}    ${productName}   ${businessType}    ${selectBusinessType}    ${email}    ${webUrl}
    AND I save draft data fo-individual
    WHEN I must see merchant list after save draft  ${merchant_name}
    AND I fill data merchant information  ${merchant_nameN}   ${titleN}   ${mer_short_nameN}    ${registerNameN}    ${productNameN}  ${businessTypeN}    ${selectBusinessTypeN}      ${emailN}    ${webUrlN}
    AND I fill merchant with effective date
    AND I save draft data fo-individual
    THEN I must see merchant list after save draft  ${merchant_name}
    AND I check data after edit  ${merchant_nameN}   ${titleN}   ${mer_short_nameN}    ${registerNameN}    ${productNameN}  ${businessTypeN}    ${selectBusinessTypeN}      ${emailN}    ${webUrlN}
    

Open Browser To Login Page
    [Arguments]   ${username}   ${password}
    Open Browser  ${UI_URL}  chrome
    Maximize Browser Window
    Input Text  id=email  ${username}
    Input Password  id=password  ${password}
    Click Button  xpath=/html/body/app-ubold/app-login/div/div/div/div/div[1]/div/form/div[3]/button

I select merchant management and I fill merchant name
    [Arguments]   ${merchant_name}
    Wait Until Element Is Visible   id=menu-merchant  timeout=15s
    Click Element  id=menu-merchant
    # Wait Until Element Is Visible  id=rowMerchantID0  timeout=15s
    sleep  3s
    # ปุ่ม ADD NEW MERCHANT
    Wait Until Element Is Visible   id=btn-addMerchant    timeout=15s
    Click Button  id=btn-addMerchant
    input text  id=input-merchantName  ${merchant_name}
    Execute JavaScript    document.getElementById("businessType4").click()
    Wait Until Element Is Visible   id=btn-add    timeout=15s
    Click Button  id=btn-add

I save draft data fo-individual
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
    # เปลี่ยน effective date ... วัน
    click element    css=#display-right-icon > div > div:nth-child(4) > div > div > div > h5
    sleep    1
    ${test}    select_advanceDate       ${5}


I fill data merchant information
    [Arguments]   ${merchant_nameN}   ${titleN}   ${mer_short_nameN}    ${registerNameN}    ${productNameN}  ${businessTypeN}    ${selectBusinessTypeN}    ${emailN}    ${webUrlN}
    # Page Should Contain  ${merchant_name}

    # แก้ไขขื่อ  merchant name 
    # Wait Until Element Is Visible  xpath=//*[@id="display-text"]/h2/span[2]/i
    # Click Element  xpath=//*[@id="display-text"]/h2/span[2]/i
    # sleep  5s
    # Wait Until Element Is Visible  id=input-display-merchantTitle
    # input text  id=input-display-merchantTitle  test1

    sleep  1s
    Wait Until Element Is Visible  id=display-businessType
    ${getbustype}=  Get Text  id=display-businessType
    Should Be Equal As Strings  ${getbustype}  ต่างชาติ-บุคคลธรรมดา

    # กรอก maerchant short name
    input text  id=input-merchantName  ${mer_short_nameN}
    Wait Until Element Is Visible  id=selectGroup-title  timeout=5s
    Select From List By Value  id=selectGroup-title  ${titleN}

    # กรอก data merchant
    input text  id=input-registerName  ${registerNameN}
    input text  id=input-productName  ${productNameN}
  
    Wait Until Element Is Visible  id=selectGroup-businessType  timeout=5s
    Select From List By Value  id=selectGroup-businessType  ${selectBusinessTypeN}

    input text  id=input-businessType  ${businessTypeN}
    input text  id=input-email  ${emailN}
    input text  id=input-webUrl  ${webUrlN}

I check data after edit
    [Arguments]   ${merchant_nameN}   ${titleN}   ${mer_short_nameN}    ${registerNameN}    ${productNameN}  ${businessTypeN}    ${selectBusinessTypeN}    ${emailN}    ${webUrlN}
    Sleep  2s
    Wait Until Element Is Visible  id=display-businessType
    ${getbustypeN}=  Get Text  id=display-businessType
    Should Be Equal As Strings  ${getbustypeN}  ต่างชาติ-บุคคลธรรมดา

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

    Wait Until Element Is Visible  id=input-email
    ${get_email}=  Get Value  id=input-email
    Should Be Equal As Strings  ${get_email}  ${emailN}

    Wait Until Element Is Visible  id=input-webUrl
    ${get_webUrl}=  Get Value  id=input-webUrl
    Should Be Equal As Strings  ${get_webUrl}  ${webUrlN}

    Close Browser






