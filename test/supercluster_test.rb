# frozen_string_literal: true

require 'test_helper'

class SuperclusterTest < Minitest::Test
  def points
    @points ||=
      JSON.parse(
        File.read(File.expand_path('./fixtures/places.json', __dir__))
      )['features']
  end

  def test_not_crash_on_weird_bbox_values
    assert_equal(
      26,
      Supercluster.get_clusters(
        {}, points,
        [129.426390, -103.720017, -445.930843, 114.518236], 1
      ).size
    )
  end
end
