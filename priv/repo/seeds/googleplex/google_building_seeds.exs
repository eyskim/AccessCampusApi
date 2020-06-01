alias AccessCampusApi.Repo
alias AccessCampusApi.Entrances.Building

Repo.insert! %Building {
    coords: %{lat: 37.4220073, lng: -122.0841666},
    name: "Googleplex",
    campus_id: 4,
    campus_name: "googleplex"
}