alias AccessCampusApi.Repo
alias AccessCampusApi.Entrances.Entrance
  
Repo.insert! %Entrance{
    coords: %{lat: 42.3762018, lng: -71.1149465},
    building_id: 11,
    building_name: "Memorial Hall"
}

Repo.insert! %Entrance{
    coords: %{lat: 42.3757335, lng: -71.1153457},
    building_id: 11,
    building_name: "Memorial Hall"
}

Repo.insert! %Entrance{
    coords: %{lat: 42.3758082, lng: -71.11584},
    building_id: 11,
    building_name: "Memorial Hall"
}

Repo.insert! %Entrance{
    coords: %{lat: 42.3759814, lng: -71.1155996},
    building_id: 11,
    building_name: "Memorial Hall"
}

