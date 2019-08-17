defmodule RotRaven.DynamoDB.Repo.Migrations.CreateGpsRecords do
  use Ecto.Migration
def change do
  create table(:post,
    primary_key: false,
    options: [
      global_indexes: [
        [index_name: "email_content",
         keys: [:email, :content],
         provisioned_throughput: [100, 100]] # [read_capacity, write_capacity]
        ],
      provisioned_throughput: [20,20]
    ]) do

    add :email,   :string, primary_key: true  # primary composite key
    add :title,   :string, range_key: true    # primary composite key
    add :content, :string

    timestamps()
  end
end
end
