namespace :db do

  desc "change"


    task :change_titles => :environment do


     for i in Item.all
     if !(i.isbn.nil?)
      b=Book.where("isbn =?", i.isbn)
      b=b.first
      title=b.department+" "+b.course+": "+b.title
      i.name=title
      i.save
      end
    end



    end


    
    task :destroy_books => :environment do
    
    for b in Book.all
    	puts b.id
    	b.destroy
    end

    end


    task :add_books => :environment do
      
         Book.scrape
    end

  desc "show"

    task :add_show => :environment do
    	 
	for i in Item.all
	    i.show=true
	    i.save
	end

    end
  


end