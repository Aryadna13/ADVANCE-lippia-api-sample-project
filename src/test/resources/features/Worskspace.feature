@Regression @Workspace
Feature: Workspace

  @GetAllWorkspace @Success
  Scenario Outline: Obtengo mis Workspaces
    Given el usuario posee una <x-api-key>
    When I perform a '<operation>' to '<entity>' endpoint with the '<jsonName>' and ''
    Then status code <statusCode> is obtained
    And obtengo el workspaceId

    Examples:
      | jsonName     | statusCode | operation | entity    | x-api-key                                        |
      | getWorkspace | 200        | GET       | WORKSPACE | MTc1YTM3NzMtMmM4YS00NmY1LTg4NGQtZWFiYzE1YjE5ZDUx |


  @GetAllWorkspace @Failed
  Scenario Outline: Obtengo mis Workspaces
    Given el usuario posee una <x-api-key>
    When I perform a '<operation>' to '<entity>' endpoint with the '<jsonName>' and ''
    Then se obtuvo el status code <statusCode>
    And obtengo un mensaje de error <mensaje>

    Examples:
      | jsonName         | statusCode | operation | entity    | x-api-key                                        | mensaje               |
      | getWorkspaceFail | 404        | GET       | WORKSPACE | MTc1YTM3NzMtMmM4YS00NmY1LTg4NGQtZWFiYzE1YjE5ZDUx | BadEndpoint           |
      | getWorkspace     | 405        | POST      | WORKSPACE | MTc1YTM3NzMtMmM4YS00NmY1LTg4NGQtZWFiYzE1YjE5ZDUx | BadMethod             |
      | getWorkspace     | 401        | GET       | WORKSPACE |                                                  | NoApiKey              |
      | getWorkspace     | 400        | GET       | WORKSPACE | MTc1YTM3NzMtMmM4YS00NmY1LTg4NGQtZWFiYzE1YjE5ZDUx | EmptyWorkspaceName    |
      | getWorkspace     | 400        | GET       | WORKSPACE | MTc1YTM3NzMtMmM4YS00NmY1LTg4NGQtZWFiYzE1YjE5ZDUx | RepeatedWorkspaceName |


    #averiguar donde le mandamos los header, esta en el request pero cooooomo
