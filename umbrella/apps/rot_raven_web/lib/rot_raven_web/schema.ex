defmodule RotRavenWeb.Schema do
  use Absinthe.Schema
  import_types RotRavenWeb.Schema.ContentTypes

  alias RotRavenWeb.Resolvers

  query do
    @desc "Get all gps_records"
    field :gps_records, list_of(:gps_record) do
      resolve &Resolvers.Content.list_posts/3
    end
  end

end
