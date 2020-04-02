defmodule AccessCampusWeb.PageController do
  use AccessCampusWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
