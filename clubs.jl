struct City
    name::String
    country::String
    latidude::Float64
    longitude::Float64
end

struct Stadium
    capacity::Int32
    name::String
end

mutable struct Club
    name::String
    squad::Vector{Player}
    moment::Int8             # how well it currently is
    city::City
    stadium::Stadium
    logo_path::AbstractString     # a filename
    colors::Vector{String}
    finances::Int32
    followers::Int32
end