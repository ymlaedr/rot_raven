defmodule RotRaven.Repo.Migrations.CreateVehicleTireSpeedRanges do
  use Ecto.Migration

  def change do
    create table(:vehicle_tire_speed_ranges) do
      add :speed_range_symbol, :string, comment: "速度記号"
      add :max_speed, :integer, comment: "最高速度(km/h)"

      timestamps()
    end

  end
end
