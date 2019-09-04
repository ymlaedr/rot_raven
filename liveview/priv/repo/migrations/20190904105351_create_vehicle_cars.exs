defmodule RotRaven.Repo.Migrations.CreateVehicleCars do
  use Ecto.Migration

  def change do
    create table(:vehicle_cars) do
      add :name, :string
      add :maker_id, references(:vehicle_makers, on_delete: :nothing)
      add :prime_mover_id, references(:vehicle_prime_movers, on_delete: :nothing)
      add :transmission_id, references(:vehicle_transmissions, on_delete: :nothing)
      add :front_tire_id, references(:vehicle_tires, on_delete: :nothing)
      add :rear_tire_id, references(:vehicle_tires, on_delete: :nothing)

      timestamps()
    end

    create index(:vehicle_cars, [:maker_id])
    create index(:vehicle_cars, [:prime_mover_id])
    create index(:vehicle_cars, [:transmission_id])
    create index(:vehicle_cars, [:front_tire_id])
    create index(:vehicle_cars, [:rear_tire_id])
  end
end
