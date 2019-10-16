# Script for populating the database. You can run it as:
#
#     mix run priv/repo/seeds.exs
#
# Inside the script, you can read and write to any of your
# repositories directly:
#
#     RotRaven.Repo.insert!(%RotRaven.SomeSchema{})
#
# We recommend using the bang functions (`insert!`, `update!`
# and so on) as they will fail if something goes wrong.


[
  %RotRaven.Vehicle.Maker{
    name: "Honda"
  },
  %RotRaven.Vehicle.Maker{
    name: "Suzuki"
  },
  %RotRaven.Vehicle.Maker{
    name: "Kawasaki"
  },
  %RotRaven.Vehicle.Maker{
    name: "YAMAHA"
  }
]
|> RotRaven.Repo.insert()
