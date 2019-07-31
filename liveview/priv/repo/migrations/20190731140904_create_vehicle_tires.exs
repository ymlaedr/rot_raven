defmodule RotRaven.Repo.Migrations.CreateVehicleTires do
  use Ecto.Migration

  def change do
    create table(:vehicle_tires) do
      add :is_radial, :boolean, default: false, null: false
      add :width, :integer
      add :flatness, :integer

      timestamps()
    end

  end
end
