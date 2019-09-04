defmodule RotRaven.Repo.Migrations.CreateVehicleTireRoadIndexes do
  use Ecto.Migration

  def change do
    create table(:vehicle_tire_road_indexes) do
      add :name, :string

      timestamps()
    end

  end
end
