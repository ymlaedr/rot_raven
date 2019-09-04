defmodule RotRaven.Repo.Migrations.CreateVehicleEngines do
  use Ecto.Migration

  def change do
    create table(:vehicle_engines) do
      add :model, :string, comment: "エンジンの型式(L15B、K20Aなど)"
      add :displacement, :integer, comment: "排気量(cc)"
      add :cylinder, :integer, comment: "気筒数"
      add :valve_mechanism, :string, comment: "バルブ駆動方式（OHV、SOHC、DOHCなど）"
      add :max_kw, :decimal, comment: "最高出力"
      add :max_kw_min_range, :integer, comment: "最高出力発生時の回転数最低値"
      add :max_kw_max_range, :integer, comment: "最高出力発生時の回転数最大値"
      add :max_nm, :decimal, comment: "最大トルク"
      add :max_nm_min_range, :integer, comment: "最大トルク発生時の回転数最低値"
      add :max_nm_max_range, :integer, comment: "最大トルク発生時の回転数最低値"

      timestamps()
    end

  end
end
