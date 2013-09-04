class VotesController < ApplicationController
  before_filter :get_post, only: [:upvote, :downvote]
  before_filter :remove_previous_vote, only:[:upvote, :downvote]



  def upvote
    vote = Vote.new

    vote.post = @post
    vote.user = current_user
    vote.value = +1;

    vote.save

    render 'refresh_post' 
  end

  def downvote
    vote = Vote.new

    vote.post = @post
    vote.user = current_user
    vote.value = -1;

    vote.save

    render 'refresh_post' 
  end

  private

  def remove_previous_vote
    posible_existing_vote = Vote.find_by_user_id_and_post_id(current_user.id, @post.id) 
    if posible_existing_vote != nil
      posible_existing_vote.delete
    end
  end

  def get_post
    @post = Post.find(params[:post_id])   
  end
end
