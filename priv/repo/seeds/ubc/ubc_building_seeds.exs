alias AccessCampusApi.Repo
alias AccessCampusApi.Entrances.Building

Repo.insert! %Building {
    coords: %{lat: 49.2612336, lng: 123.2510563},
    name: "ICICS Building",
    campus_id: 1,
    campus_name: "University of British Columbia"
}

Repo.insert! %Building {
    coords: %{lat: 49.2664447, lng: -123.2521443},
    name: "AMS Nest",
    campus_id: 1,
    campus_name: "University of British Columbia"
}

Repo.insert! %Building {
    coords: %{lat: 49.2621969, lng: -123.2552572},
    name: "Centre for Interactive Research on Sustainability",
    campus_id: 1,
    campus_name: "University of British Columbia"
}

Repo.insert! %Building {
    coords: %{lat: 49.2675221, lng: -123.2548868},
    name: "Irving K. Barber Learning Centre",
    campus_id: 1,
    campus_name: "University of British Columbia"
}

Repo.update_all Building, set: [campus_name: "ubc"]