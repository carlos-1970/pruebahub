require "application_system_test_case"

class CuposTest < ApplicationSystemTestCase
  setup do
    @cupo = cupos(:one)
  end

  test "visiting the index" do
    visit cupos_url
    assert_selector "h1", text: "Cupos"
  end

  test "creating a Cupo" do
    visit cupos_url
    click_on "New Cupo"

    fill_in "Apellido", with: @cupo.apellido
    fill_in "Descripcion", with: @cupo.descripcion
    fill_in "Dnipaciente", with: @cupo.dniPaciente
    fill_in "Especialidad", with: @cupo.especialidad
    fill_in "Fechanacimiento", with: @cupo.fechaNacimiento
    fill_in "Nombre", with: @cupo.nombre
    click_on "Create Cupo"

    assert_text "Cupo was successfully created"
    click_on "Back"
  end

  test "updating a Cupo" do
    visit cupos_url
    click_on "Edit", match: :first

    fill_in "Apellido", with: @cupo.apellido
    fill_in "Descripcion", with: @cupo.descripcion
    fill_in "Dnipaciente", with: @cupo.dniPaciente
    fill_in "Especialidad", with: @cupo.especialidad
    fill_in "Fechanacimiento", with: @cupo.fechaNacimiento
    fill_in "Nombre", with: @cupo.nombre
    click_on "Update Cupo"

    assert_text "Cupo was successfully updated"
    click_on "Back"
  end

  test "destroying a Cupo" do
    visit cupos_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Cupo was successfully destroyed"
  end
end
