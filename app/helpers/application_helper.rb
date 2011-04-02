module ApplicationHelper

	def title
		base_title = "crunchycaramel"
		if @title.nil?
			base_title
		else
			"#{base_title} | #{@title}"
		end
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
		image_tag("logo.png", :height => 70, :width => 250, :alt => "CrunchyCaramel Logo", :class => "round")
	end
end
