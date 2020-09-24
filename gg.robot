*** Settings ***
Library     Selenium2Library

*** Test Case ***
Ole
    Open Browser       https://www.google.com/webhp?authuser=1#sbfbu=1&pi=   chrome
    Maximize Browser Window
    Input Text   name=q  kapook
    Submit Form
    Click Element    //h3[.='Kapook.com รวม ข่าว ผลบอล เกมส์ ดูดวง ตรวจหวย ดูทีวีออนไลน์ ...']
    Click Link   css=[track='nav-ทำอาหาร']
    Scroll Page To Location  0  500

    

*** Keywords ***
Scroll Page To Location
    [Arguments]    ${x_location}    ${y_location}
    Execute JavaScript    window.scrollTo(${x_location},${y_location})