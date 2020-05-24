class EventSerializer 
    include FastJsonapi::ObjectSerializer


    attributes :title, :image, :date, :description

end