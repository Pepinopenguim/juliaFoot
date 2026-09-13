include("players.jl")
include("clubs.jl")

@enum Possession home away

"
Defines what is happening at this very moment
"
mutable struct MatchState
    possession::Possession
    match_momentum::Int32
end

"
Defines the match itself
"
mutable struct Match
    home::Club
    away::Club
    home_score::Int8
    away_score::Int8
    minute::Int
    home_advantage::Bool
    match_state::MatchState
end 

abstract type Competition end

@enum CompetitionType league cup continental

struct League <: Competition
    name::String
    country::String
    level::Int
    competition_type::CompetitionType
end

struct Season
    competition::Competition
    year::Int
    participants::Vector{Club}
end

mutable struct Standing
    club::Club
    played::Int
    wins::Int
    draws::Int
    losses::Int
    goals_for::Int
    goals_against::Int
    points::Int
end

