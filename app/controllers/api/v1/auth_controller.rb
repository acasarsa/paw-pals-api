class Api::V1::AuthController < ApplicationController 


    # def login 
    #     dog = Dog.find_by(username: params[:username])
    #     if ( dog && dog.authenticate(params[:password]))
    #         render json: {dog: dog}
    #     else 
    #         render json: {errors: "Try Again" }
    #     end 
    # end

    def create 
        dog = Dog.find_by(username: dog_login_params[:username])

        render json: { user: UserSerializer.new(@user), jwt: token }, status: :accepted
    end
        
        #User#authenticate comes from BCrypt
        if @user && @user.authenticate(user_login_params[:password])
          # encode token comes from ApplicationController
          token = encode_token({ user_id: @user.id })
          render json: { user: UserSerializer.new(@user), jwt: token }, status: :accepted
        else
          render json: { message: 'Invalid username or password' }, status: :unauthorized
        end
      end

end 