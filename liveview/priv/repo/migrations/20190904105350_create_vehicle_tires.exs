defmodule RotRaven.Repo.Migrations.CreateVehicleTires do
  use Ecto.Migration

  def change do
    create table(:vehicle_tires) do
      add :is_radial, :boolean, default: false, null: false, comment: "ラジアルタイヤか"
      add :width, :integer, comment: "タイヤ幅(mm)"
      add :flatness, :integer, comment: "偏平率(%) タイヤの高さ÷タイヤ幅×100で求まる"
      add :wheel_inch, :integer, comment: "ホイールの直径サイズ(インチ)"
      add :road_index_id, references(:vehicle_tire_load_indexes, on_delete: :nothing), comment: "タイヤが有するロードインデックスのID"
      add :speed_range_id, references(:vehicle_tire_speed_ranges, on_delete: :nothing), comment: "タイヤが有する速度記号のID"

      timestamps()
    end

    create index(:vehicle_tires, [:road_index_id])
    create index(:vehicle_tires, [:speed_range_id])
  end
end
