defmodule RotRaven.Repo.Migrations.CreateVehicleElectoricMotors do
  use Ecto.Migration

  def change do
    create table(:vehicle_electoric_motors) do
      add :model, :string, comment: "モーターの型式(MF6、H2など)"
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
