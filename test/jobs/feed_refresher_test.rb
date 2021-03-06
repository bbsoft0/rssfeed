require 'test_helper'

class FeedRefresherTestTest < ActiveSupport::TestCase
  test "should enqueue feed_refresher_fetcher jobs" do
    Sidekiq::Queues["feed_refresher_fetcher"].clear
    Feed.all.each do |feed|
      Feed.reset_counters(feed.id, :subscriptions)
    end
    assert_difference "Sidekiq::Queues['feed_refresher_fetcher'].count", Feed.count do
      FeedRefresher.new().tap do |job|
        def job.build_ids(*args)
          Feed.all.map(&:id)
        end
        job.perform(1, false)
      end
      Sidekiq::Queues['feed_refresher_fetcher'].each do |job|
        assert_equal(Feed.find(job["args"][0]).feed_url, job["args"][1])
      end
    end
  end
end
