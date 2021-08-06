*** Settings ***
Library    OperatingSystem    

*** Test Cases ***
filefind
    ${PATH}    Set Variable    C:/Test/week1.txt
    File Should Exist    ${PATH}
    ${error}=    Grep File    C:/Test/week1.txt   ERROR
    ${ret}=    Grep File    C:/Test/week1.txt    ex*ple
        