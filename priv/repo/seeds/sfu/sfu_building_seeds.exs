alias AccessCampusApi.Repo
alias AccessCampusApi.Entrances.Building

Repo.insert! %Building {
    coords: %{lat: 49.279923, lng: -122.922215},
    name: "West Mall Centre",
    campus_id: 2,
    campus_name: "sfu"
}

Repo.insert! %Building {
    coords: %{lat: 49.27838, lng: -122.9188222},
    name: "Academic Quadrangle",
    campus_id: 2,
    campus_name: "sfu"
}

Repo.insert! %Building {
    coords: %{lat: 49.27966, lng: -122.918856},
    name: "WAC Bennett Library",
    campus_id: 2,
    campus_name: "sfu"
}

Repo.insert! %Building {
    coords: %{lat: 49.279402, lng: -122.912749},
    name: "Blusson Hall",
    campus_id: 2,
    campus_name: "sfu"
}