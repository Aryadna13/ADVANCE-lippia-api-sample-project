@AllWorkspace
Feature: Workspace

  Scenario Outline: obtengo GetWorkspcaes
    Given el usuario posee una <x-api-key>
    When I perform a '<operation>' to '<entity>' endpoint with the '<jsonName>' and ''
    Then status code <statusCode> is obtained
    And obtengo el workspaceId

    Examples:
      | jsonName     | statusCode | operation | entity    | x-api-key                                        |
      | getWorkspace | 200        | GET       | WORKSPACE | MTc1YTM3NzMtMmM4YS00NmY1LTg4NGQtZWFiYzE1YjE5ZDUx |
