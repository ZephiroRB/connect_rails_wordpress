namespace :utils do

  task categories: :environment do

    data = Wordpress::Category.cloud.map{|t| {id: t[:category].id, parent: t[:category].parent, category: t[:category].name, slug: t[:category].slug}}.sort_by{|sb| sb[:id]}
    
    create_user_json("categories", data)

  end

  def create_user_json(utoken, data)
    File.open("#{path_user_json}/#{utoken}.json","w+") do |f|
      f.write(data.to_json)
    end
  end

  def path_user_json
    Rails.root.join('public','jsons')
  end

end