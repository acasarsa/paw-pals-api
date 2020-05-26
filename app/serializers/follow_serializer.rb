class FollowSerializer 
    include FastJsonapi::ObjectSerializer


    attributes :follower, :followee, except: [:created_at, :updated_at]

end