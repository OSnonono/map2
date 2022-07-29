alias Map2.Location

[
  %Location{lat: 35.658581, long: 139.745433, name: "東京タワー"},
  %Location{lat: 35.643626, long: 139.668864, name: "キャロットタワー"},
  %Location{lat: 35.710057, long: 139.810718, name: "東京スカイツリー"}
]
|> Enum.each(& Map2.Repo.insert(&1))

# Script for populating the database. You can run it as:
#
#     mix run priv/repo/seeds.exs
#
# Inside the script, you can read and write to any of your
# repositories directly:
#
#     Map2.Repo.insert!(%Map2.SomeSchema{})
#
# We recommend using the bang functions (`insert!`, `update!`
# and so on) as they will fail if something goes wrong.
