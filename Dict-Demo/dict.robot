*** Settings ***
Library  Collections

*** Variables ***
&{DICTVAR} =  item1=value1  item2=value2  item3=value3  item4=value4  item5=value5

*** Test Cases ***
Check Dictionary demo
    [Documentation]  This is a demo of dictionary in robot framework
#    :FOR  ${index}  IN  DICTVAR
#    \  Log  ${DictVar.${index}}
    Log  ${DICTVAR.item1}
    Log  ${DICTVAR.item2}
    Log  ${DICTVAR.item3}

    ${dict-keys} =  Get Dictionary Keys  ${DICTVAR}
    Log  ${dict-keys}

    ${dict-values} =  Get Dictionary Values  ${DICTVAR}
    Log  ${dict-values}