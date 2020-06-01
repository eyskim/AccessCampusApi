alias AccessCampusApi.Repo
alias AccessCampusApi.Entrances.Building

Repo.insert! %Building {
    coords: %{lat: 42.3748649, lng: -71.1181752},
    name: "Harvard Hall",
    campus_id: 3,
    campus_name: "harvard"
}

Repo.insert! %Building {
    coords: %{lat: 42.3759109, lng: -71.1170645},
    name: "Memorial Hall",
    campus_id: 3,
    campus_name: "harvard"
}