class ExerciseSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name, :instructions
  attribute :category do |obj|
    CategorySerializer.new(obj.category)
  end
end
