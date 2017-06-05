class Discipline < ActiveRecord::Base
    belongs_to :course
    enum status: [:Ofertada, :Inativa]
end
