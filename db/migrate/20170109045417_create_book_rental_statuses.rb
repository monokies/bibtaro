class CreateBookRentalStatuses < ActiveRecord::Migration[5.0]
  def change
    create_table :book_rental_statuses do |t|
      t.integer :bookId
      t.integer :userId
      t.integer :status
      t.date :lentFrom
      t.date :scheduledLentTo
      t.date :lentTo

      t.timestamps
    end
  end
end
