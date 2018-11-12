defmodule CountriesWeb.PageController do
  use CountriesWeb, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
