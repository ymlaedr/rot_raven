defmodule RotRaven.Repo.Migrations.CreateVehicleTransmissionTypes do
  use Ecto.Migration

  def change do
    create table(:vehicle_transmission_types) do
      add :name, :string

      timestamps()
    end

  end
end
