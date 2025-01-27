*** Settings ***
#TestHomePage.py
Documentation   Test-Suite for playground page automation
Resource    ../PageObjects/HomePage.robot

# Run the Test-Script using the command

# robot -d Reports TestCases\TestHomePage.robot

*** Test Cases ***

TestCase-1
    Start automation

TestCase-2
    Sign-in into the credentials

TestCase-3
    Add Sign-up credentials

TestCase-4
    Add a new user

TestCase-5
    Confirm the new user

TestCase-6
    Shutdown automation





