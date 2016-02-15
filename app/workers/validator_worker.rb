class EmailValidatorWorker
  include Sidekiq::Worker

  def perform(api)
    api = api.constantize.first
    api.validates
  end
end