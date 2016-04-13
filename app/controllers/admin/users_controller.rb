module Admin
  class UsersController < Admin::ApplicationController
    before_action :authenticate_user!
    # To customize the behavior of this controller,
    # simply overwrite any of the RESTful actions. For example:
    #
    # def index
    #   super
    #   @resources = User.all.paginate(10, params[:page])
    # end

    # Define a custom finder by overriding the `find_resource` method:
    # def find_resource(param)
    #   User.find_by!(slug: param)
    # end

    # See https://administrate-docs.herokuapp.com/customizing_controller_actions
    # for more information

    def logout
        #check to see if user is logged in
        #if so destroy the session and direct to events/index
        #if not direct to login page
        @all_events = Event.all.order(:date)
        @date_check = ""
        render "events/index"
    end
  end
end
