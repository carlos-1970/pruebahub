class CreateCupos < ActiveRecord::Migration[6.0]
  def change
    create_table :cupos do |t|
      t.string :dniPaciente
      t.string :nombre
      t.string :apellido
      t.string :fechaNacimiento
      t.string :especialidad
      t.text :descripcion

      t.timestamps
    end
  end
end
