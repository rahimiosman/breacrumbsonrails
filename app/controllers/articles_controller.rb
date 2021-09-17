class ArticlesController < ApplicationController
  before_action :set_articles, only: [:show, :edit]
  before_action :add_index_breadcrumb, only: [:show, :edit, :new]

  def index
    add_breadcrumb('Articles')
  end

  def show
    add_breadcrumb(@article[:title])
  end

  def edit
    add_breadcrumb(@article[:title], article_path(@article))
    add_breadcrumb('Edit')
  end

  def new
    add_breadcrumb('New Article')
  end

  private
  def set_articles
    title = params[:id]
    title = params[:id]

    case title
    when "Macbook"
      image = "pro.jpeg"
      description = "Our thinnest, lightest notebook, completely transformed by the Apple M1 chip.
                    CPU speeds up to 3.5x faster. GPU speeds up to 5x faster.
                    Our most advanced Neural Engine for up to 9x faster machine learning. The longest battery life ever in a MacBook Air.
                    And a silent, fanless design. This much power has never been this ready to go."
    when "Loremo"
      image = "ipsum.jpeg"
      description = "Lorem ipsum dolor sit amet, consectetur adipiscing elit,
                    sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.
                    Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.
                    Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.
                    Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."

    when "Tiktok"
      image = "tiktok.png"
      description = "TikTok, known in China as Douyin, is a video-sharing focused social networking service owned by Chinese
                    company ByteDance. The social media platform is used to make a variety of short-form videos,
                    from genres like dance, comedy, and education, that have a duration from fifteen seconds to three minutes."

    when "Coffee"
      image = "coffee.jpeg"
      description = "Coffee is a brewed drink prepared from roasted coffee beans, the seeds of berries from certain Coffea species.
                    From the coffee fruit, the seeds are separated to produce a stable, raw product: unroasted green coffee."
    end

    @article = {
      title: title,
      image: image,
      description: description
    }
  end

  def add_index_breadcrumb
    add_breadcrumb('Articles', articles_path)
  end
end
