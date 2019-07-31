defmodule RotRaven.Repo.Migrations.CreateVehicleTransmissionGears do
  use Ecto.Migration

  def change do
    create table(:vehicle_transmission_gears) do
      add :type, :string

      timestamps()
    end

  end
end
