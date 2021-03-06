json.array!(@books) do |book|
  json.extract! book, :id, :title, :author, :isbn_10, :isbn_13, :edition, :print, :publication_year, :publication_month, :condition, :value, :status, :stage, :description, :visits, :user_id, :prefered_place, :prefered_time
  json.url book_url(book, format: :json)
end
