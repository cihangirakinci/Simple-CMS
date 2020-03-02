class DemoController < ApplicationController

  layout 'application'

  def index
    render('index')
  end

  def hello
    render('hello')
  end

  def other_hello
    redirect_to(:action => 'index')
  end

  def lynda
    redirect_to('https://www.lynda.com/')
  end

  def escape_output

  end
end
