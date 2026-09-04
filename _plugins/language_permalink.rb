# frozen_string_literal: true

Jekyll::Hooks.register :documents, :post_init do |post|
  language = post.path.split(File::SEPARATOR).fetch(-2, nil)

  next unless %w[en jp].include?(language)

  post.data['lang'] ||= language
  post.data['permalink'] = "/#{language}/#{post.data['slug']}/"
end