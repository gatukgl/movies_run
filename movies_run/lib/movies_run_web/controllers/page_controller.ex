defmodule MoviesRunWeb.PageController do
  use MoviesRunWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
