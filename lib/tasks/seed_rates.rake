require 'csv'
namespace :seed_rates do
  desc 'Imports rate records from the csv and creates records'
  task import: :environment do
    CSV.foreach(Rails.root.join('./service_provider_data.csv'), headers: true) do |row|
      row_id = row.fetch('id', nil)
      unless Rate.find_by(id: row_id)
        Rate.create!(:id => row_id, :company_name => row.fetch('name', nil), :flat_rate => row.fetch('flat shipping rate'))
      end
    end
  end
end
