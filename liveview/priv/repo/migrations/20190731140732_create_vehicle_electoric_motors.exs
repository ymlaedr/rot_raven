defmodule RotRaven.Repo.Migrations.CreateVehicleElectoricMotors do
  use Ecto.Migration

  def change do
    create table(:vehicle_electoric_motors) do
      add :model, :string
      add :max_kw, :decimal
      add :max_kw_min_range, :integer
      add :max_kw_max_range, :integer
      add :max_nm, :decimal
      add :max_nm_min_range, :integer
      add :max_nm_max_range, :integer

      timestamps()
    end

  end
end
