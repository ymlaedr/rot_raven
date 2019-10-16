defmodule RotRaven.Repo.Migrations.CreateVehicleTransmissionGearRatios do
  use Ecto.Migration

  def change do
    create table(:vehicle_transmission_gear_ratios) do
      add :no, :integer, comment: "ギアの何段目か"
      add :is_reduction, :boolean, default: false, comment: "減速比かどうか"
      add :is_reverse, :boolean, default: false, comment: "後退ギアかどうか"
      add :ratio, :decimal, comment: "ギア比"
      add :transmission_id, references(:vehicle_transmissions, on_delete: :nothing), comment: "このギアを有するトランスミッションのID"

      timestamps()
    end

    create index(:vehicle_transmission_gear_ratios, [:transmission_id])
  end
end
