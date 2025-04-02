Feature: Users
  Background:
    * url 'https://serverest.dev/'
  Scenario: Obtener lista de usuarios
    Given path '/usuarios'
    When method get
    Then status 200


  Scenario: Registrar Usuario
    * def adicionar_usuario =
    """
      {
      "nome": "Jose Martin FG",
      "email": "josemartinfg@qa.com.br",
      "password": "teste",
      "administrador": "true"
      }
    """
    Given path '/usuarios'
    And request adicionar_usuario
    When method post
    Then status 201
    And match response.message == 'Cadastro realizado com sucesso'

    * def userId = response._id
    * print 'DATA OBTENIDA:', userId

  #Scenario: Consulta registro realizado

    Given  path '/usuarios/',userId
    When method get
    Then status 200
    And match response._id == userId
  #Scenario: Actualiza datos de usuario

    Given path '/usuarios/', userId
    * def data_actualiza =
    """
    {
      "nome": "Martin FG",
      "email": "josemartinfg@qa.com.br",
      "password": "teste",
      "administrador": "true"
    }
    """
    And request data_actualiza
    When method put
    Then status 200
    And response.message == 'Registro alterado com sucesso'

#Scenario: Elimina registro de usuario
    Given path '/usuarios/', userId
    When method delete
    Then status 200
    And response.message == 'Nenhum registro excluído'
