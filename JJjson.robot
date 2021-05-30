*** Settings ***
Library String

*** Variables ***
${json_string}       {'test01':['Burger is god'],'x.test02':['error','defect']}

*** Keywords ***
Find Length Json
    [Arguments]  ${Start}
    ${length}  Get length          ${Start}
    Log to Console    ${length}
#    [Return]    ${length}

*** Test Cases ***
Test Json
    ${json}=    evaluate    json.dumps(${json_string})    json
#    Find Length Json  ${json}
#    Log to Console  ${json}
#    ${json}=             evaluate        json.loads('''${json_string}''')    json
    Find Length Json  ${json}
    Log to Console  ${json}


