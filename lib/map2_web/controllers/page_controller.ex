defmodule Map2Web.PageController do
  use Map2Web, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
