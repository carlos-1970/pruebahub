require 'test_helper'

class CuposControllerTest < ActionDispatch::IntegrationTest
  setup do
    @cupo = cupos(:one)
  end

  test "should get index" do
    get cupos_url
    assert_response :success
  end

  test "should get new" do
    get new_cupo_url
    assert_response :success
  end

  test "should create cupo" do
    assert_difference('Cupo.count') do
      post cupos_url, params: { cupo: { apellido: @cupo.apellido, descripcion: @cupo.descripcion, dniPaciente: @cupo.dniPaciente, especialidad: @cupo.especialidad, fechaNacimiento: @cupo.fechaNacimiento, nombre: @cupo.nombre } }
    end

    assert_redirected_to cupo_url(Cupo.last)
  end

  test "should show cupo" do
    get cupo_url(@cupo)
    assert_response :success
  end

  test "should get edit" do
    get edit_cupo_url(@cupo)
    assert_response :success
  end

  test "should update cupo" do
    patch cupo_url(@cupo), params: { cupo: { apellido: @cupo.apellido, descripcion: @cupo.descripcion, dniPaciente: @cupo.dniPaciente, especialidad: @cupo.especialidad, fechaNacimiento: @cupo.fechaNacimiento, nombre: @cupo.nombre } }
    assert_redirected_to cupo_url(@cupo)
  end

  test "should destroy cupo" do
    assert_difference('Cupo.count', -1) do
      delete cupo_url(@cupo)
    end

    assert_redirected_to cupos_url
  end
end
