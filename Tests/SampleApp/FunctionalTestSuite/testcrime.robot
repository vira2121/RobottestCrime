*** Settings ***
Library  SeleniumLibrary
Library  SeleniumLibrary
*** Variables ***


*** Test Cases ***
start
    [Documentation]  start
    [Tags]  start page
    start testcase
    sleep  1

guest report
    [Documentation]  guest report
    [Tags]  guest
    click button   xpath:/html/body/div/div/div/table/tbody/tr[4]/td/button
    sleep  1
    input text  name:gdesc      bike stolen
    sleep  1
    input text  name:gremark        ijk
    sleep   1
    input text  name:gdate      10-04-2022
    sleep   1
    click button    xpath:/html/body/div/div/div/form[1]/table/tbody/tr[4]/td/button
    sleep   4
    click element    xpath:/html/body/nav/div/div/ul/li/a
    sleep   2


user registration
    [Documentation]  user registration
    [Tags]      user
    click button    xpath:/html/body/div/div/div/table/tbody/tr[2]/td/button
    sleep   1
    input text  name:usname     yash
    sleep   1
    input text  name:mobileno       7088555247
    sleep   1
    input text  name:email      yash@gmail.com
    sleep   1
    input text  name:address        shrirampur
    sleep   1
    input text  name:pass       123
    sleep   1
    click button    xpath:/html/body/div/div/div/form[1]/table/tbody/tr[6]/td/button
    sleep   3

user login
    [Documentation]  user login
    [Tags]      user
    input text  name:Uname      yash@gmail.com
    sleep   2
    input text  name:Upass      123
    sleep   1
    click button    xpath:/html/body/div/div/div/form[1]/table/tbody/tr[3]/td/button
    sleep   2


user report crime
    [Documentation]  user report crime
    [Tags]      user
    input text  name:desc       wallet stolen
    sleep   1
    input text  name:remark     efg
    sleep   1
    input text  name:date       10-04-2022
    sleep   2
    click button    xpath:/html/body/div/div/div/form/table/tbody/tr[4]/td/button
    sleep   2

user edit profile
    [Documentation]  user edit profile
    [Tags]      user
    click element   xpath:/html/body/nav/div/div/ul/li[2]/a
    sleep   1
    input text  name:oldem      yash@gmail.com
    sleep   1
    input text  name:oldpass        123
    sleep   1
    input text  name:newnam     yash1
    sleep   1
    input text  name:newmob     1234567890
    sleep   1
    input text  name:newem      yashraut@gmail.com
    sleep   1
    input text  name:newadd     rahuri
    sleep   1
    input text  name:newpass        1234
    sleep   1
    click button    xpath:/html/body/div/div/div/form/table/tbody/tr[8]/td/button
    sleep   2

user logout
    [Documentation]  user logout
    [Tags]      user
    click button       xpath:/html/body/div/div/div/form[2]/button
    sleep   2


admin login
    [Documentation]  admin login
    [Tags]      admin
    click button    xpath:/html/body/div/div/div/table/tbody/tr[1]/td/button
    sleep   1
    input text  name:username       admin
    sleep   1
    input text  name:password       12345
    sleep   1
    click button    xpath:/html/body/div/div/div/form[1]/table/tbody/tr[3]/td/button
    sleep   5

admin filter
    [Documentation]  admin filter
    [Tags]  admin
    click element   xpath:/html/body/nav/div/div/ul/li[1]/a
    sleep   2
    input text  xpath:/html/body/form/div/div/div/table/tbody/tr[1]/td[2]/input     10-04-2022
    sleep   2
    click button    xpath:/html/body/form/div/div/div/table/tbody/tr[2]/td/button
    sleep   5

admin logout
    [Documentation]  admin logout
    [Tags]  admin
    click element    xpath:/html/body/nav/div/div/ul/li[2]/a
    stop testcase

*** Keywords ***
start testcase
    Open Browser    http://127.0.0.1:5000/  chrome
    maximize browser window

stop testcase
    Close Browser
