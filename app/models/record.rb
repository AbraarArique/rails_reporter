class Record < ActiveRecord::Base
  validates :reporter, :email, :description,
  presence: true

  def self.to_csv
    attributes = %w{id reporter email description created_at updated_at}

    CSV.generate(headers: true) do |csv|
      csv << attributes

      all.each do |record|
        csv << attributes.map{ |attr| record.send(attr) }
      end
    end
  end
end
