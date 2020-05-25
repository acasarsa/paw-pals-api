class EventSerializer 
    include FastJsonapi::ObjectSerializer


    attributes :id, :title, :image, :date, :description, :dogs

end