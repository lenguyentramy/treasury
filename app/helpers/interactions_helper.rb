module InteractionsHelper
  def render_interaction(poi,user)
    render :partial => 'manage/interactions/display'
  end
  
  def render_interaction_result(poi,user)
    render :partial => 'manage/interactions/result'
    
  end
end
