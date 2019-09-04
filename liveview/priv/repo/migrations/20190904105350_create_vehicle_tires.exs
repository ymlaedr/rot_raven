defmodule RotRaven.Repo.Migrations.CreateVehicleTires do
  use Ecto.Migration

  def change do
    create table(:vehicle_tires) do
      add :is_radial, :boolean, default: false, null: false
      add :width, :integer
      add :flatness, :integer
      add :wheel_inch, :integer
      add :road_index_id, references(:vehicle_tire_road_indexes, on_delete: :nothing)
      add :speed_range_id, references(:vehicle_tire_speed_ranges, on_delete: :nothing)

      timestamps()
    end

    create index(:vehicle_tires, [:road_index_id])
    create index(:vehicle_tires, [:speed_range_id])
  end
end
