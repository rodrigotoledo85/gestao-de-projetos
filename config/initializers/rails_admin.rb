RailsAdmin.config do |config|
  
  config.main_app_name = ["Gestão de Projetos", ""]
  
  config.navigation_static_label = "Lins Úteis"
  config.navigation_static_links = {
    'Suporte' => 'Liga pro Marcel'
  }
 
config.navigation_static_label = "Lins Úteis"

  config.model Course do
    navigation_icon 'fa fa-graduation-cap'
  end
  config.model Discipline do
    navigation_icon 'fa fa-book'
  end
  
  config.model Project do
    navigation_icon 'fa fa-pencil-square-o'
  end
  
  config.model User do
    navigation_icon 'fa fa-user-circle-o'
  end
  ### Popular gems integration
  
  config.model Course do
    create do
      field :name
      field :status
    end
    edit do
      field :name
      field :status
    end
  end

  config.model Discipline do
    create do
      field :name
      field :status
    end
    edit do
      field :name
      field :status
    end
  end

  config.model Project do
    create do
      field :course
      field :discipline
      field :title
      field :description
      field :status
      
      field :user_id, :hidden do
        default_value do
          bindings[:view]._current_user.id
        end
      end
    end
    edit do
      field :course
      field :discipline
      field :title
      field :description
      field :status
      
      field :user_id, :hidden do
        default_value do
          bindings[:view]._current_user.id
        end
      end
    end
  end
  
  config.model User do
    create do
      field :name
      field :status
      field :kind
      field :email
      field :password
      field :password_confirmation
    end
    edit do
      field :name
      field :status
      field :kind
      field :email
      field :password
      field :password_confirmation
    end
  end
  
  config.model Discipline do
    parent Course
  end
  
  ## == Devise ==
  config.authenticate_with do
     warden.authenticate! scope: :user
   end
  config.current_user_method(&:current_user)

  ## == Cancan ==
  config.authorize_with :cancan

  ## == Pundit ==
  # config.authorize_with :pundit

  ## == PaperTrail ==
  # config.audit_with :paper_trail, 'User', 'PaperTrail::Version' # PaperTrail >= 3.0.0

  ### More at https://github.com/sferik/rails_admin/wiki/Base-configuration

  ## == Gravatar integration ==
  ## To disable Gravatar integration in Navigation Bar set to false
  # config.show_gravatar = true

  config.actions do
    dashboard                     # mandatory
    index                         # mandatory
    new
    export
    bulk_delete
    show
    edit
    delete
    show_in_app

    ## With an audit adapter, you can add:
    # history_index
    # history_show
  end
end
