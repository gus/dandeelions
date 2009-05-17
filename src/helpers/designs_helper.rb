require 'ostruct'

module DesignsHelper
  # .design.grid_3.[category]
  #   %img{ :src => "/images/designs/[name].png", :title => [title] }
  def render_designs
    load_designs.each do |design|
      design_block(design.category) { design_link(design.name, design.title) }
    end
  end

  # .design.grid_3.[category]
  #   [block]
  def design_block(category, &block)
    haml_tag(:div, :class => "design grid_3 #{category}") { yield }
  end

  # %a{ :href => "/designs/[name]" }
  def design_link(filename, title)
    haml_tag(:a, :href => "/designs/#{filename}") { design_img(filename, title) }
  end

  # %img{ :src => "/images/designs/[name].png", :title => [title] }
  def design_img(filename, title)
    haml_tag(:img, :src => "/images/designs/#{filename}.png", :title => title )
  end

  # Replace spaces with commas
  def display_category(category_class)
    category_class.gsub(/ +/, ', ')
  end
private
  def load_designs
    design_file = File.join(File.dirname(__FILE__), '..', '..', 'config', 'designs.yml')
    YAML.load_file(design_file).map { |design| OpenStruct.new(design) }
  end

  def find_design(name)
    load_designs.detect { |design| design.name == name }
  end
end
