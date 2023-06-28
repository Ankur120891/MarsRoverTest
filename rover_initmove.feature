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

@Initmove
Feature: Rover Initialization and Movement
    As a NASA operator
    I want to initialize a rovers position and direction
    And move the rover on the plateau
    So that I can control its movements on Mars

    Scenario: Initialize rovers position and direction
        Given a rover is deployed on Mars
        When I set the rovers position to (1, 2) and facing North
        Then the rovers position and direction should be (1, 2, N)

    Scenario: Move rover on the plateau
        Given a rover is deployed on Mars
        And the rovers position is set to (3, 3) and facing East
        When I move the rover using the command "MMRMMRMRRM"
        Then the rovers position and direction should be (5, 1, E)
