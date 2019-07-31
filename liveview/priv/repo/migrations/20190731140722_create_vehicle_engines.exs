defmodule RotRaven.Repo.Migrations.CreateVehicleEngines do
  use Ecto.Migration

  def change do
    create table(:vehicle_engines) do
      add :model, :string
      add :displacement, :integer
      add :cylinder, :integer
      add :valve_mechanism, :string
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
