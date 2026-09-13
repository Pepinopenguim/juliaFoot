abstract type Player end

@enum Side left right both

mutable struct Keeper <: Player
    name::String
    number::Int8
    speed::Int8
    ability::Int8
    strength::Int8
    side::Side
end

mutable struct Defender <: Player
    name::String
    number::Int8
    speed::Int8
    ability::Int8
    strength::Int8
    side::Side
end

mutable struct Midfielder <: Player
    name::String
    number::Int8
    speed::Int8
    ability::Int8
    strength::Int8
    side::Side
end

mutable struct Attacker <: Player
    name::String
    number::Int8
    speed::Int8
    ability::Int8
    strength::Int8
    side::Side
end
