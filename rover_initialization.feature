#Author: your.email@your.domain.com
#Keywords Summary :
#Feature: List of scenarios.
#Scenario: Business rule through list of steps with arguments.
#Given: Some precondition step
#When: Some key actions
#Then: To observe outcomes or validation
#And,But: To enumerate more Given,When,Then steps
#Scenario Outline: List of steps for data-driven as an Examples and <placeholder>
#Examples: Container for s table
#Background: List of steps run before each of the scenarios
#""" (Doc Strings)
#| (Data Tables)
#@ (Tags/Labels):To group Scenarios
#<> (placeholder)
#""
## (Comments)
#Sample Feature Definition Template

@Initialization
Feature: Rover Initialization
    As a NASA operator
    I want to initialize a rovers position and direction
    So that I can control its movements on Mars

    Scenario: Initialize rovers position and direction
        Given a rover is deployed on Mars
        When I set the rovers position to (1, 2) and facing North
        Then the rovers position and direction should be (1, 2, N)

