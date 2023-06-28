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

@Movement
Feature: Rover Movement on Mars Plateau
    As a NASA operator
    I want to move the rover on the plateau
    So that it explores the terrain and sends back information

    Scenario: Move the rover as per the given instructions
        Given the plateau has upper-right coordinates of 5 5
        And a rover is deployed on Mars
        And the rover's position is set to 1 2 N
        When I move the rover using the command "LMLMLMLMM"
        Then the rover's final position and heading should be 1 3 N


