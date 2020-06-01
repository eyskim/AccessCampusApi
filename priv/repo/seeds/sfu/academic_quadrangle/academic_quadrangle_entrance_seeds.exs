alias AccessCampusApi.Repo
alias AccessCampusApi.Entrances.Entrance
  
Repo.insert! %Entrance{
    coords: %{lat: 49.278959, lng: -122.917641},
    building_id: 7,
    building_name: "Academic Quadrangle"
}

Repo.insert! %Entrance{
    coords: %{lat: 49.279236, lng: -122.917531},
    building_id: 7,
    building_name: "Academic Quadrangle"
}
 
Repo.insert! %Entrance{
    coords: %{lat: 49.278324, lng: -122.915710},
    building_id: 7,
    building_name: "Academic Quadrangle"
}

