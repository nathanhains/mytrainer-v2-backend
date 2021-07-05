class FeedUserSerializer
    include FastJsonapi::ObjectSerializer
    attributes :username, :avatar
  end