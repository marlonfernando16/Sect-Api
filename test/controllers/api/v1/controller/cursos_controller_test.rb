require './test/test_helper'

class Api::V1::CursosControllerTest < ActionDispatch::IntegrationTest

  test "deve fazer requisição get para a rota index" do
    get "/api/v1/cursos"
    assert_response :success
  end


