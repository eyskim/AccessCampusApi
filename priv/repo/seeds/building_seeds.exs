alias AccessCampusApi.Repo
alias AccessCampusApi.Entrances.Building

Repo.insert! %Building {
    coords: %{lat: 49.2612336, lng: 123.2510563},
    name: "ICICS Building",
    campus_id: 1,
    campus_name: "University of British Columbia"
}

Repo.insert! %Building {
    coords: %{lat: 49.3001906, lng: -123.1621774},
    name: "West Mall Centre",
    campus_id: 2,
    campus_name: "Simon Fraser University"
}