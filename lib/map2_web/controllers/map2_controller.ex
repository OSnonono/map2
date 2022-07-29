defmodule Map2Web.Map2Controller do
  use Map2Web, :controller

  import Plug.Conn
  alias Map2.Location
  alias Map2.Locations

  def index(conn, _params) do
    locations = Locations.get_all_location()
    render(conn, "index.html", locations: locations)
  end

  def new(conn, _params) do
    render(conn, "form.html", location: Location.build_changeset(), message: nil)
  end

  def create(conn, params) do
    IO.inspect(params)
    IO.inspect("------------------")
    IO.inspect(":create params")
    IO.inspect("at core_account_session_controller.ex:17")

    # paramsのlocationのvaluesに空文字があるかどうか
    # 中身はこんな感じ
    # %{
    #   "lat" => "35.6646848",
    #   "long" => "139.7377631",
    #   "name" => "テレビ東京"
    # }

    input_params = params["location"]
    if !("" in Map.values(input_params)) do
      lat = String.to_float(input_params["lat"])
      long = String.to_float(input_params["long"])
      name = input_params["name"]
      location = %{%Location{} | lat: lat, long: long, name: name}

      Locations.insert_location(location)

      redirect(conn, to: Routes.map2_path(conn, :index))
    else
      render(conn, "form.html", location: Location.build_changeset(), message: "空文字を含むデータは登録できません。")
    end
  end
end
