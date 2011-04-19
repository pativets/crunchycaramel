module ApplicationHelper

	def title
    # Delete these later
    
    # base_title = "crunchycaramel"
    # if @title.nil?
    #   base_title
    # else
    #   "#{base_title} | #{@title}"
    # end
    @title
	end			
	
	def light 
    image_tag("light.jpg",  :alt => "Light",
                            :class  => "round",
                            :id => "light",
                            :size => "150x200")
  end
  
  def joonha 
    image_tag("joonha.jpg", :alt => "Joonha",
                            :class  => "round",
                            :id => "joonha",
                            :size => "150x196")
  end
	
	def logo
		image_tag("logo.png", :height => 50, :width => 178, :alt => "CrunchyCaramel Logo")
	end
end
