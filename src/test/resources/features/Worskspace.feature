@Regression @Workspace
Feature: Workspace

  @GetAllWorkspace @Success @ok
  Scenario Outline: Obtengo mis Workspaces
    Given el usuario posee una <x-api-key>
    When I perform a '<operation>' to '<entity>' endpoint with the '<jsonName>' and ''
    Then status code <statusCode> is obtained
    And obtengo el <mensaje>

    Examples:
      | jsonName         | statusCode | operation | entity    | x-api-key                                        | mensaje
      | getWorkspace     | 200        | GET       | WORKSPACE | Ary-token                                        | ok
      | getWorkspaceFail | 404        | GET       | WORKSPACE | MTc1YTM3NzMtMmM4YS00NmY1LTg4NGQtZWFiYzE1YjE5ZDUx | BadEndpoint           |
      | getWorkspace     | 405        | POST      | WORKSPACE | MTc1YTM3NzMtMmM4YS00NmY1LTg4NGQtZWFiYzE1YjE5ZDUx | BadMethod             |
      | getWorkspace     | 401        | GET       | WORKSPACE |                                                  | NoApiKey              |
      | getWorkspace     | 400        | GET       | WORKSPACE | MTc1YTM3NzMtMmM4YS00NmY1LTg4NGQtZWFiYzE1YjE5ZDUx | EmptyWorkspaceName    |
      | getWorkspace     | 400        | GET       | WORKSPACE | MTc1YTM3NzMtMmM4YS00NmY1LTg4NGQtZWFiYzE1YjE5ZDUx | RepeatedWorkspaceName |


    #averiguar donde le mandamos los header, esta en el request pero cooooomo
