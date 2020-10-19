class Cupo < ApplicationRecord
	validates :dniPaciente, :nombre, :apellido, presence: {message: "es requerido."}
	validates :dniPaciente, uniqueness: {message: "debe ser unico."}

end
