class HomepageController < ApplicationController

  def index
     @comments = Comment.all.order('created_at DESC')
    #raise current_user.inspect
    
    # Conseil: JAMAIS de code commenté SVP. Nulle part, jamais (valable pour toutes techno)
    # Ceci dit, ça montre que vous avez la bonne approche sur le debug, ça c'est bien.
  end

  def create
  #  raise params.inspect
    Comment.create!(
      content: params[:comment]
      )
      redirect_to homepage_index_path
    # Attention au formatage / mise en forme du code SVP !
  end
  
  # Aille, il manque des features...

end
