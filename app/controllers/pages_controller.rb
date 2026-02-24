class PagesController < ApplicationController
  def home
    @profile   = defined?(Profile) ? Profile.first : nil
    @projects  = defined?(Project) ? Project.all : []
    @education = defined?(Education) ? Education.all : []
    @skills    = defined?(Skill) ? Skill.all : []
  end

  def about
  end

  def projects
  end

  def education
  end

  def contact
  end
end
