class Project < ActiveRecord::Base
  belongs_to :user
  belongs_to :course
  belongs_to :discipline
  enum status: [:Aberto, :Enviado, :Pendente, :Aprovado, :Reprovado]
end
