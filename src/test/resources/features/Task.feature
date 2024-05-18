@Regression @Task
Feature: Task

  @DeleteTask @Success
  Scenario Outline: Elimino una task
    Given el usuario posee una <x-api-key>
    When I perform a '<operation>' to '<entity>' endpoint with the '<jsonName>' and ''
    Then se obtuvo el status code <statusCode>
    And Elimino una task

    Examples:
      | jsonName | statusCode | operation | entity | x-api-key                                        |
      |          | 200        | DELETE    | TASK   | MTc1YTM3NzMtMmM4YS00NmY1LTg4NGQtZWFiYzE1YjE5ZDUx |


  @DeleteTask @Failed
  Scenario Outline: Elimino una task
    Given el usuario posee una <x-api-key>
    When I perform a '<operation>' to '<entity>' endpoint with the '<jsonName>' and ''
    Then se obtuvo el status code <statusCode>
    And obtengo un mensaje de error <mensaje>
    #And print response  se puede añadir esto aca???

    Examples:
      | jsonName | statusCode | operation | entity | x-api-key                                        | mensaje      |
      |          | 404        | DELETE    | TASK   | MTc1YTM3NzMtMmM4YS00NmY1LTg4NGQtZWFiYzE1YjE5ZDUx | BadEndpoint  |
      |          | 405        | POST      | TASK   | MTc1YTM3NzMtMmM4YS00NmY1LTg4NGQtZWFiYzE1YjE5ZDUx | BadMethod    |
      |          | 401        | DELETE    | TASK   |                                                  | NoApiKey     |
      |          | 400        | DELETE    | TASK   | MTc1YTM3NzMtMmM4YS00NmY1LTg4NGQtZWFiYzE1YjE5ZDUx | EstadoACTIVO |
