abstract type Player end

mutable struct PlayerData
    name::String
    number::Int8
    speed::Int8
    ability::Int8
    strength::Int8
end

mutable struct FieldPlayer <: Player
    data::PlayerData
end

mutable struct Keeper <: Player
    data::PlayerData
    height::Int8
end
