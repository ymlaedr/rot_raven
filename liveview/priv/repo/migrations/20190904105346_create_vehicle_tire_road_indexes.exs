defmodule RotRaven.Repo.Migrations.CreateVehicleTireRoadIndexes do
  use Ecto.Migration

  def change do
    create table(:vehicle_tire_load_indexes) do
      add :load_index, :integer, comment: "ロードインデックス"
      add :air_pressure, :integer, comment: "空気圧(kPa)"
      add :load_capacity_kg, :integer, comment: "負荷能力(kg) "
      add :is_extra_load_standard, :boolean, default: false, comment: "EXTRA_LOAD規格か"

      timestamps()
    end

  end
end
