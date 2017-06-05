class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
    enum status: [:Ativo, :Inativo]
    enum kind: [:Professor, :Coordenador, :Administrador]
    has_many :projects
end
