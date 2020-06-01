alias AccessCampusApi.Repo
alias AccessCampusApi.Entrances.Entrance
  
Repo.insert! %Entrance{
    coords: %{lat: 42.374946, lng: -71.118163},
    building_id: 10,
    building_name: "Harvard Hall"
}

