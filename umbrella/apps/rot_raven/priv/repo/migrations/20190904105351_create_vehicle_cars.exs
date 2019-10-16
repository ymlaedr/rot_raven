defmodule RotRaven.Repo.Migrations.CreateVehicleCars do
  use Ecto.Migration

  def change do
    create table(:vehicle_cars) do
      add :name, :string, comment: "車体の名称"
      add :maker_id, references(:vehicle_makers, on_delete: :nothing), comment: "製造したメーカーのID"
      add :prime_mover_id, references(:vehicle_prime_movers, on_delete: :nothing), comment: "車両が有する原動機のID"
      add :transmission_id, references(:vehicle_transmissions, on_delete: :nothing), comment: "車両が有するトランスミッションのID"
      add :front_tire_id, references(:vehicle_tires, on_delete: :nothing), comment: "車両が有するフロントタイヤのID"
      add :rear_tire_id, references(:vehicle_tires, on_delete: :nothing), comment: "車両が有するリアタイヤのID"

      timestamps()
    end

    create index(:vehicle_cars, [:maker_id])
    create index(:vehicle_cars, [:prime_mover_id])
    create index(:vehicle_cars, [:transmission_id])
    create index(:vehicle_cars, [:front_tire_id])
    create index(:vehicle_cars, [:rear_tire_id])
  end
end
