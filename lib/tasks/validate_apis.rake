task :validate_apis => :environment do
  Validators.all.each do |validator|
    ValidatorWorker.perform_async(validator.type)
  end
end