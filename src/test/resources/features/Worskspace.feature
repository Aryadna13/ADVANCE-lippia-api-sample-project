@Regression @Workspace
Feature: Workspace

  @GetAllWorkspace @Success @ok
  Scenario Outline: Obtengo mis Workspaces
    Given el usuario posee una <x-api-key>
    When I perform a '<operation>' to '<entity>' endpoint with the '<jsonName>' and ''
    Then status code <statusCode> is obtained
    And obtengo el <mensaje>

    Examples:
      | jsonName     | statusCode | operation | entity    | x-api-key | mensaje |
      | getWorkspace | 200        | GET       | WORKSPACE | Ary-token | ok      |
