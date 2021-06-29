class FriendSerializer
    include FastJsonapi::ObjectSerializer

    attribute :followee

    attribute :follower 

  end