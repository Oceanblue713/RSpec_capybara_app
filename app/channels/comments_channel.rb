class CommentsChannel < ApplicationCable::Channel 
    def cubscribed 
        stream_from "channel"
    end

    def unsubscribed 
    end
end