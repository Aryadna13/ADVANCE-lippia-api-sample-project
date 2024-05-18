@Regression @Project
Feature: Project

  @PostProject @Success
  Scenario Outline: Se agrega un nuevo proyecto
    Given el usuario posee una <x-api-key>
    When I perform a '<operation>' to '<entity>' endpoint with the '<jsonName>' and ''
    Then se obtuvo el status code <statusCode>
    And Se agrega un nuevo proyecto

    Examples:
      | jsonName | statusCode | operation | entity  | x-api-key                                        |
      |          | 201        | POST      | PROJECT | MTc1YTM3NzMtMmM4YS00NmY1LTg4NGQtZWFiYzE1YjE5ZDUx |


  @PostProject @Failed
  Scenario Outline: Se agrega un nuevo proyecto
    Given el usuario posee una <x-api-key>
    When I perform a '<operation>' to '<entity>' endpoint with the '<jsonName>' and ''
    Then se obtuvo el status code <statusCode>
    And obtengo un mensaje de error <mensaje>
    #And print response  se puede añadir esto aca???

    Examples:
      | jsonName | statusCode | operation | entity  | x-api-key                                        | mensaje               |
      |          | 404        | POST      | PROJECT | MTc1YTM3NzMtMmM4YS00NmY1LTg4NGQtZWFiYzE1YjE5ZDUx | BadEndpoint           |
      |          | 405        | PUT       | PROJECT | MTc1YTM3NzMtMmM4YS00NmY1LTg4NGQtZWFiYzE1YjE5ZDUx | BadMethod             |
      |          | 401        | POST      | PROJECT |                                                  | NoApiKey              |
      |          | 400        | POST      | PROJECT | MTc1YTM3NzMtMmM4YS00NmY1LTg4NGQtZWFiYzE1YjE5ZDUx | EmptyProjectName            |
      |          | 400        | POST      | PROJECT | MTc1YTM3NzMtMmM4YS00NmY1LTg4NGQtZWFiYzE1YjE5ZDUx | RepeatedProjectName |


