ActiveAdmin.register Block do

  permit_params :title, :show_title, :body, :position, :display, :class_suffix, :order, :is_published

  index do
    column :id
    column :title, :sortable => :title
    column :position, :sortable => :position
    column :display, :sortable => :display
    column :created_at, :sortable => :created_at
    column :order
    actions
  end

  form do |f|
    f.inputs "Details" do
      f.input :title, :label => "Title"
      f.input :show_title, :label => "Show Title"
      f.input :body, as: :html_editor, :label => "Body"
      f.input :position, :label => "Position", :as => :select, :collection => [["Jumbotron", "jumbotron"], ["Block", "block"]]
      f.input :display, :label => "Display", :as => :select, :collection => [["All pages", "all"], ["Homepage Only", "home"], ["All But Homepage", "nohome"]]
      f.input :order, :label => "Order"
      f.input :class_suffix, :label => "Class Suffix"
      f.input :is_published, :label => "Published"
      f.actions
    end
  end

end
