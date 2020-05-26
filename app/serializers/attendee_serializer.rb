class AttendeeSerializer
    include FastJsonapi::ObjectSerializer

    attributes :dog, :event, except: [:created_at, :updated_at]
end

