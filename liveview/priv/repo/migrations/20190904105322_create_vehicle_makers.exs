defmodule RotRaven.Repo.Migrations.CreateVehicleMakers do
  use Ecto.Migration

  def change do
    create table(:vehicle_makers) do
      add :name, :string

      timestamps()
    end

  end
end
