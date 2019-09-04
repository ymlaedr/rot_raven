defmodule RotRaven.Repo.Migrations.CreateVehicleTireSpeedRanges do
  use Ecto.Migration

  def change do
    create table(:vehicle_tire_speed_ranges) do
      add :name, :string

      timestamps()
    end

  end
end
