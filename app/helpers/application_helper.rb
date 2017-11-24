module ApplicationHelper
  def title(article_title)
    content_for(:title) { article_title }
  end

  def meta_description(article_subtitle)
    content_for(:meta_description) { "#{article_subtitle}" }
  end
end
