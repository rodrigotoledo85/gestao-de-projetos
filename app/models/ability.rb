class Ability
  include CanCan::Ability
 
  def initialize(user)
      if user.kind == 'Administrador'
        can :manage, :all
      else
        can :read, :all
      end
      
=begin                  
    if user
        if user.kind == 'Professor'
            puts 'Professor é o perfil'
            can :manage, :all

            can :access, :all
            can :access, :ability
            can :access, :rails_admin
            can :access, :main
            can :access, :dashboard
            can :manage, :dashboard
            can :manage, :Dashboard
            can :manage, Main, :dashboard
            can :access, :Main
            can :manage, Course
            can :manage, Discipline
            can :manage, Project, user_id: user.id
        elsif user.kind == 'Coordenador'
            can :manage, Project, status: :Enviado
        elsif user.kind == 'Administrador'
            can :manage, :all
        end
    end
=end
  end
end