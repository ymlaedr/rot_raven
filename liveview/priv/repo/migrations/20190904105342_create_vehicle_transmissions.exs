defmodule RotRaven.Repo.Migrations.CreateVehicleTransmissions do
  use Ecto.Migration

  def change do
    create table(:vehicle_transmissions) do
      add :type_id, references(:vehicle_transmission_types, on_delete: :nothing), comment: "トランスミッション形式のID"
      add :clutch_type_id, references(:vehicle_transmission_clutch_types, on_delete: :nothing), comment: "クラッチ形式のID"

      timestamps()
    end

    create index(:vehicle_transmissions, [:type_id])
    create index(:vehicle_transmissions, [:clutch_type_id])
  end
end
