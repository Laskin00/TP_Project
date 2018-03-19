class AddImageToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :image_url, :string, default: "https://img-fanburst.freetls.fastly.net/pjbL8r-DgAVxsfgA0ijKasVEae8=/400x400/cx2.fanburst.com/artwork/560cebff-1cf1-4bf0-9ab7-15623ffba8da.png"
  end
end
