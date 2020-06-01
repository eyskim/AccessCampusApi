alias AccessCampusApi.Repo
alias AccessCampusApi.Entrances.Entrance
  
Repo.insert! %Entrance{
    coords: %{lat: 49.2621294, lng: -123.2535079},
    building_id: 3,
    building_name: "Centre for Interactive Research on Sustainability"
}

Repo.insert! %Entrance{
    coords: %{lat: 49.2620372, lng: -123.2534705},
    building_id: 3,
    building_name: "Centre for Interactive Research on Sustainability"
}

