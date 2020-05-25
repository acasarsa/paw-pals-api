class ApplicationController < ActionController::API


    def current_user
        # if decoded_token
            # decoded_token=> [{"user_id"=>2}, {"alg"=>"HS256"}]
            # or nil if we can't decode the token
            # user_id = decoded_token[0]['user_id']
            dog = Dog.find_by(id: dog_id)
        # end
    end

    def logged_in?
        !!current_user
    end
end
