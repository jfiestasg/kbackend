Feature: Users
  Background:
    * url 'https://serverest.dev/'
  Scenario: Obtener lista de usuarios
    Given path '/usuarios'
    When method get
    Then status 200