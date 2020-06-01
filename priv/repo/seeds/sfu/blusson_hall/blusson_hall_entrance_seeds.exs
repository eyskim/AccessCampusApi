alias AccessCampusApi.Repo
alias AccessCampusApi.Entrances.Entrance
  
Repo.insert! %Entrance{
    coords: %{lat: 49.278976, lng: -122.912537},
    building_id: 9,
    building_name: "Blusson Hall"
}

Repo.insert! %Entrance{
    coords: %{lat: 49.279630, lng: -122.912850},
    building_id: 9,
    building_name: "Blusson Hall"
}

