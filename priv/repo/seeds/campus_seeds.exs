alias AccessCampusApi.Repo
alias AccessCampusApi.Entrances.Campus

Repo.insert! %Campus{
    coords: %{lat: 49.2621294, lng: -123.249704},
    name: "University of British Columbia",
    acronym: "ubc",
    theme_color: "#0C2344"
}

Repo.insert! %Campus{
    coords: %{lat: 49.2780937, lng: -122.9198833},
    name: "Simon Fraser University",
    acronym: "sfu",
    theme_color: "#CD3D3D"
}

Repo.insert! %Campus{
    coords: %{lat: 42.3770029, lng: -71.1188488},
    name: "Harvard University",
    acronym: "harvard",
    theme_color: "#A41034"
}

Repo.insert! %Campus{
    coords: %{lat: 37.4220041, lng: -122.0862462},
    name: "Googleplex",
    acronym: "googleplex",
    theme_color: "#3DDC84"
}