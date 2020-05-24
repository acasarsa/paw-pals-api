class EventSerializer 
    include FastJsonapi::ObjectSerializer


    attributes :id, :title, :image, :date, :description

end