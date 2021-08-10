*** Settings ***
Library    OperatingSystem    
# Library    ${CURDIR}/textfind.py

*** Test Cases ***
filefind
    ${PATH}    Set Variable    C:/Test/week1.txt
    File Should Exist    ${PATH}
    # ${error}=    Grep File    C:/Test/week1.txt   ERROR
    # ${ret}=    Grep File    C:/Test/week1.txt    example
    # Run Keyword If    '${ret}'=='0'    log    未找到匹配字符
    # Should Exist    ${ret}    example
    ${text}    Set Variable    'output'
    ${LOG_FILE}    Get File    ${PATH}    encoding=UTF-8
    Run Keyword If    ${text} in ${LOG_FILE}   Log    信息存在
        Else    Log    信息不存在
    
     