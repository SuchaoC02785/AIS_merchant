*** Settings ***
Library  SeleniumLibrary
Library  String
Resource  variable/global_variable.robot

*** Test Case ***
Create merchant profile ui of fo-individual
    # [Tags]    merchant profile ui th_ju  success
     [Template]  Create merchant profile ui of fo-individual information
    # |username             password    Merchant Name   title   mer_short_name      shopkeeperName    ProductNme  businessType    selectProdutType    email     webUrl
    ubold@coderthemes.com   test    bow shop                 ${EMPTY}           ${EMPTY}            ${EMPTY}   ${EMPTY}                         ${EMPTY}                            ${EMPTY}                         ${EMPTY}                ${EMPTY}
    ubold@coderthemes.com   test    ร้านวิทโก้ อินเตอร์เนชั่นแนล       คุณ        วิทโก้ อินเตอร์        นายวิทโก้ จำเนียน   การบำบัดน้ำเสีย                     ธุรกิจเกี่ยวกับสิ่งแวดล้อมและการบำบัดน้ำเสีย    อสังหาริมทรัพย์                      vitgointer@test.com    www.vitgointer.com
    ubold@coderthemes.com   test    Nine shop                   นาย        Nine shop          จักรกฤษ อัมรัตน์    สัญญาณมือถือ                      จ่ายค่าบริการ                           โทรคมนาคม                        jakkrit@hotmail.com     www.jakkrit.com
    ubold@coderthemes.com   test    Boy consult                 นาย        Boy consult        จักรา มหาศักดิ์     ลงทุนLTF                          ลงทุนLTFกองทุน                        กองทุน                            jakkra@gmail.com        www.jakkra.com
    ubold@coderthemes.com   test    Many Leasing                นาง        Many Leasing       มณีรัตน์ บางนาพา   จำหน่ายเสื้อกันหนาว                  รับจำนำรถยนตร์                         บริการทางการเงิน/ เงินกู้              maneerat@hotmail.com    www.maneerat.com
    ubold@coderthemes.com   test    Puy shop                    คุณ        Puy shop           อัญชลี ปรังณีต     จำหน่ายรองเท้ามือสอง                 จำหน่ายประกันทุกประเภท                  ประกันภัย                         unchalee@gmail.com      www.unchalee.com
    ubold@coderthemes.com   test    Prim Shop                   เด็กหญิง    Prim Shop          ปริมนภัท อุณชา    รับชำระค่าโทรศัพท์และสาธารณูปโภค       รับชำระค่าโทรศัพท์และสาธารณูปโภค         ค่าสาธารณูปโภค                    primnapat@gmail.com     www.primnapat.com
    ubold@coderthemes.com   test    Namwan                      เด็กชาย     Namwan             น้ำใส เลิศอรัญ     จำหน่ายเสื้อผ้าแฟชั่น                   จำหน่ายเสื้อผ้าแฟชั่น                     สินค้าและบริการ                    namwan@gmail.com         www.namwan.com


*** Keyword ***
Create merchant profile ui of fo-individual information
    [Arguments]   ${username}   ${password}   ${merchant_name}   ${title}   ${mer_short_name}    ${registerName}    ${productName}  ${businessType}    ${selectBusinessType}    ${email}    ${webUrl}
    # And I fill merchant information  ${merchant_name}   ${title}   ${mer_short_name}    ${registerName}    ${productName}   ${businessType}    ${selectBusinessType}    ${email}    ${webUrl}
    GIVEN Open Browser To Login Page  ${username}   ${password}
    AND I select merchant management 
    AND I fill merchant name  ${merchant_name}
    AND I fill merchant information  ${merchant_name}   ${title}   ${mer_short_name}    ${registerName}    ${productName}   ${businessType}    ${selectBusinessType}    ${email}    ${webUrl}
    WHEN I save draft data fo-individual
    THEN I must see merchant list after save draft

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
    Wait Until Element Is Visible   id=btn-addMerchant
    Click Button  id=btn-addMerchant
    input text  id=input-merchantName  ${merchant_name}
    Execute JavaScript    document.getElementById("businessType4").click()
    Wait Until Element Is Visible   id=btn-add   timeout=15s
    Click Button  id=btn-add

I fill merchant information
    [Arguments]   ${merchant_name}    ${title}    ${mer_short_name}    ${registerName}    ${productName}   ${businessType}    ${selectBusinessType}    ${email}    ${webUrl}
    # Check ว่า Title ตรงกับคำว่า merchant_name หรือไม่
    Page Should Contain  ${merchant_name}
    Wait Until Element Is Visible  id=display-businessType
    ${gettext}=  Get Text  id:display-businessType
    Should Be Equal As Strings  ${gettext}  ต่างชาติ-บุคคลธรรมดา
    # กรอก maerchant short name
    input text  id=input-merchantName  ${mer_short_name}
    Wait Until Element Is Visible  id=selectGroup-title  timeout=5s
    Select From List By Value  id=selectGroup-title  ${title}
    input text  id=input-registerName  ${registerName}
    input text  id=input-productName  ${productName}
    Wait Until Element Is Visible  id=selectGroup-businessType  timeout=5s
    sleep  2s
    Select From List By Value  id=selectGroup-businessType  ${selectBusinessType}
    input text  id=input-businessType  ${businessType}
    input text  id=input-email  ${email}
    input text  id=input-webUrl  ${webUrl}
    Execute JavaScript    window.scrollTo(0,0)
    Wait Until Element Is Visible  id=btn-saveDraft
    Click Element  xpath=//*[@id="btn-saveDraft"]

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
    Wait Until Element Is Visible  id=display-merchantID
    ${getmerchantsid}=  Get Text  id=display-merchantID

    Wait Until Element Is Visible  id=btn-close
    Click Element  id=btn-close
    Wait Until Element Is Visible  xpath=/html/body/div/div/div[3]/button[1]  timeout=5s
    Click Element  xpath=/html/body/div/div/div[3]/button[1]
    Set Test Variable  ${GETMERCHANTSID}

I must see merchant list after save draft
    Page Should Contain  Merchant List
    Close Browser