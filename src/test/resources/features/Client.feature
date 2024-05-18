@Regression @Client
Feature: Client

  @PostAddClients @Success
  Scenario Outline: Se agrega un nuevo cliente
    Given el usuario posee una <x-api-key>
    When I perform a '<operation>' to '<entity>' endpoint with the '<jsonName>' and ''
    Then se obtuvo el status code <statusCode>
    And Se agrega un nuevo proyecto

    Examples:
      | jsonName | statusCode | operation | entity | x-api-key                                        |
      |          | 201        | POST      | CLIENT | MTc1YTM3NzMtMmM4YS00NmY1LTg4NGQtZWFiYzE1YjE5ZDUx |


  @PostAddClients @Failed
  Scenario Outline: Se agrega un nuevo cliente
    Given el usuario posee una <x-api-key>
    When I perform a '<operation>' to '<entity>' endpoint with the '<jsonName>' and ''
    Then se obtuvo el status code <statusCode>
    And obtengo un mensaje de error <mensaje>
    #And print response  se puede añadir esto aca???

    Examples:
      | jsonName | statusCode | operation | entity | x-api-key                                        | mensaje            |
      |          | 404        | POST      | CLIENT | MTc1YTM3NzMtMmM4YS00NmY1LTg4NGQtZWFiYzE1YjE5ZDUx | BadEndpoint        |
      |          | 405        | PUT       | CLIENT | MTc1YTM3NzMtMmM4YS00NmY1LTg4NGQtZWFiYzE1YjE5ZDUx | BadMethod          |
      |          | 401        | POST      | CLIENT |                                                  | NoApiKey           |
      |          | 400        | POST      | CLIENT | MTc1YTM3NzMtMmM4YS00NmY1LTg4NGQtZWFiYzE1YjE5ZDUx | EmptyClientName    |
      |          | 400        | POST      | CLIENT | MTc1YTM3NzMtMmM4YS00NmY1LTg4NGQtZWFiYzE1YjE5ZDUx | RepeatedClientName |


