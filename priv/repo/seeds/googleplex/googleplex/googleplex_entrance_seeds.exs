alias AccessCampusApi.Repo
alias AccessCampusApi.Entrances.Entrance
  
Repo.insert! %Entrance{
    coords: %{lat: 37.4218933, lng: -122.0839232},
    building_id: 12,
    building_name: "Googleplex"
}

Repo.insert! %Entrance{
    coords: %{lat: 37.4219019, lng: -122.08419},
    building_id: 12,
    building_name: "Googleplex"
}

Repo.insert! %Entrance{
    coords: %{lat: 37.42199, lng: -122.0843319},
    building_id: 12,
    building_name: "Googleplex"
}

Repo.insert! %Entrance{
    coords: %{lat: 37.4220528, lng: -122.0840105},
    building_id: 12,
    building_name: "Googleplex"
}

