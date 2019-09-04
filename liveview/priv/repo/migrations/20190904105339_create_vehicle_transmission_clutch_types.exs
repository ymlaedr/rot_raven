defmodule RotRaven.Repo.Migrations.CreateVehicleTransmissionClutchTypes do
  use Ecto.Migration

  def change do
    create table(:vehicle_transmission_clutch_types) do
      add :name, :string

      timestamps()
    end

  end
end
