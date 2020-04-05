class SightingSerializer
  def initialize(sighting_object)
    @sighting = sighting_object
  end

  def to_serialized_json_test_1
    options = {
      include: {
        bird: { only: %i[name species] },
        location: { only: %i[latitude longitude] }
      },
      except: %i[updated_at]
    }
    @sighting.to_json(options)
  end

  def to_serialized_json_solution
    options = {
      include: {
        bird: { only: %i[name species] },
        location: { only: %i[latitude longitude] }
      },
      except: %i[updated_at]
    }
    @sighting.to_json(options)
  end

  #   def to_serialized_json
  #     options = { include: { bird: {}, location: {} } }
  #     @sighting.to_json(options)
  #   end

  # def to_serialized_json
    # options = { include: { bird: {}, location: {} } }
    # options = { include: %i[bird location] }
    # options = { include: %i[bird location] }
    # @sighting.to_json(options)
  # end

  def to_serialized_json
    options = {
      include: {
        bird: {
          only: [:name, :species]
        },
        location: {
          only: [:latitude, :longitude]
        }
      },
      except: [:updated_at],
    }
    @sighting.to_json(options)
  end

  # def to_serialized_json
    # options = { include: { bird: {}, location: {} } }
    # options = { include: %i[bird location] }
    # options = { include: [:bird, :location], except: :updated_at }
    # @sighting.to_json(options)
  # end
end
