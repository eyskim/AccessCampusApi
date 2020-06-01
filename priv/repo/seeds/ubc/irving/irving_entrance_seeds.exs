alias AccessCampusApi.Repo
alias AccessCampusApi.Entrances.Entrance
  
Repo.insert! %Entrance{
    coords: %{lat: 49.2673061, lng: -123.2520361},
    building_id: 5,
    building_name: "Irving K. Barber Learning Centre"
}

Repo.insert! %Entrance{
    coords: %{lat: 49.2676508, lng: -123.2523463},
    building_id: 5,
    building_name: "Irving K. Barber Learning Centre"
}

