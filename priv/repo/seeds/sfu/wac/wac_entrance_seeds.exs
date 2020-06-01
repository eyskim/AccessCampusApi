alias AccessCampusApi.Repo
alias AccessCampusApi.Entrances.Entrance
  
Repo.insert! %Entrance{
    coords: %{lat: 49.279453, lng: -122.918815},
    building_id: 7,
    building_name: "WAC Bennett Library"
}

