class UsersController < ApplicationController

    # POST method for creating a user
    def create
        user = User.new(user_params)

        # checking whether params are valid for User creation
        if user.valid?
            user.save
            render json: user, status: 201
        else
            render json: user.errors.messages, status: 422
        end
    end

    # GET method for retrieving a user
    def show
        user = User.find(params[:id])
        render json: user, status: 201
    end

    # PUT method for updating a user
    def update
        user = User.find(params[:id])
        if user.update(user_params)
            render json: user, status: 201
        else 
            render json: {status: "update not successful"}, status: 422
        end
        
    end

    # DELETE method for deleting a user
    def destroy
        user = User.find(params[:id])
        if user.destroy!
            render json: {status: "user successfully deleted"}, status: 200
        else
            render json: {status: "deletion failed"}
        end
    end

    private
    # method for whitelisting params
    def user_params
        params.permit(:name, :email, :phone_number)
    end

end
