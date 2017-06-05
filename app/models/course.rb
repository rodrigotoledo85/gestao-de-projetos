class Course < ActiveRecord::Base
    enum status: [:Ativo, :Inativo]
end
