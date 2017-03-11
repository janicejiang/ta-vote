module TopicsHelper
  def render_down_vote_button(topic)
    if topic.votes.count == 0
      button_to '-1', "#", disabled: true # 按钮不可点击
    else
      button_to '-1', downvote_topic_path(topic), method: :post
    end
  end
end
