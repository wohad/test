*** Settings ***
Library    OperatingSystem    

*** Test Cases ***
filefind
    ${PATH}    Set Variable    C:/Test/week1.txt
    File Should Exist    ${PATH}
    ${error}=    Grep File    C:/Test/week1.txt   ERROR
    ${ret}=    Grep File    C:/Test/week1.txt    example 
    Run Keyword If    '${ret}'=='0'    log    未找到匹配字符
    Should Exist    ${ret}    example    
     