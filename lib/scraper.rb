require 'nokogiri'
require 'open-uri'
require_relative './course.rb'
class Scraper
  def print_courses
    self.make_courses
    Course.all.each do |course|
      if course.title && course.title != ""
        puts "Title: #{course.title}"
        puts "  Schedule: #{course.schedule}"
        puts "  Description: #{course.description}"
      end
    end
  end
  def get_page
    page_html=open("http://learn-co-curriculum.github.io/site-for-scraping/courses")
    @doc=Nokogiri::HTML(page_html)
    p @doc
  end
  def get_courses
    self.get_page
    @courses=@doc.css("#course-grid.block.posts-holder")
    #id="#course-grid" class=".block", class=".posts-holder",
      #class=".post same-height-left/same-height-right", <h2>Web Development Immersive</h2>
    @courses
  end
  def make_courses
  end
  def print_courses
  end
end
