class EventSerializer 
    include FastJsonapi::ObjectSerializer


    attributes :id, :title, :image, :date, :description, :dogs, except: [:created_at, :updated_at]

end