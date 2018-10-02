class FetchApiJob < ApplicationJob
  queue_as :default

  def perform(*args)
    # Do something later
      Company.set(wait: 1 hour).perform_later(func)
  end
end
