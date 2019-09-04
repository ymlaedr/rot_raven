defmodule RotRaven.Repo.Migrations.CreateVehicleTransmissionGearRatios do
  use Ecto.Migration

  def change do
    create table(:vehicle_transmission_gear_ratios) do
      add :no, :integer
      add :ratio, :decimal
      add :gear_id, references(:vehicle_transmissions, on_delete: :nothing)

      timestamps()
    end

    create index(:vehicle_transmission_gear_ratios, [:gear_id])
  end
end
