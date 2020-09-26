*** Settings ***
Library      Selenium2Library
Resource                  ../resouce/kodang.robot

*** Keywords ***
Setop
    Open Browser    https://www.amazon.com/    ${Browser}
Setcs
    Close All Browsers 
    Close Browser