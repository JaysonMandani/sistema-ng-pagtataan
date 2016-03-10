RailsAdmin.config do |config|

  ### Popular gems integration

  ## == Devise ==
  # config.authenticate_with do
  #   warden.authenticate! scope: :user
  # end
  # config.current_user_method(&:current_user)

  ## == Cancan ==
  # config.authorize_with :cancan

  ## == Pundit ==
  # config.authorize_with :pundit

  ## == PaperTrail ==
  # config.audit_with :paper_trail, 'User', 'PaperTrail::Version' # PaperTrail >= 3.0.0

  ### More at https://github.com/sferik/rails_admin/wiki/Base-configuration

  config.actions do
    dashboard                     # mandatory
    index do
      except ['Teacher', 'Subscription']
    end
    new do
      except ['Member', 'Teacher', 'Subscription']
    end
    export
    bulk_delete
    show do
      except ['Member', 'Teacher', 'Subscription']
    end
    edit do
      except ['Member', 'Teacher', 'Subscription']
    end
    delete do
      except ['Member', 'Teacher', 'Subscription']
    end
    show_in_app

    ## With an audit adapter, you can add:
    # history_index
    # history_show
  end

  config.model Schedule do
    create do
      exclude_fields :subscription, :daterange
    end

    update do
      exclude_fields :subscription, :daterange
    end
  end

  config.model Lesson do
    list do
      def render
        bindings[:view].render :partial => "rails_admin/main/_lesson_list", :locals => {:field => self}
      end
    end
  end

  RailsAdmin.config do |config|
    config.authenticate_with do
      warden.authenticate! scope: :teacher
    end
    config.current_user_method(&:current_teacher)
  end

end
