# frozen_string_literal: true

Gem::Specification.new do |spec|
  spec.name          = "jekyll-theme-neubrutalism"
  spec.version       = "0.1.0"
  spec.authors       = ["Elycia Finch"]
  spec.email         = ["elycia.finch@outlook.com"]

  spec.summary       = "A Neubrutalism (or Neo‑Brutalism) jekyll is a design style characterized by intentionally raw, high‑contrast UI elements."
  spec.homepage      = "https://github.com/cryptonym0/jekyll-theme-neubrutalism"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").select do |f|
    f.match(%r{^(assets|_(includes|layouts|sass)/|(LICENSE|README)((\.(txt|md|markdown)|$)))}i)
  end

  spec.add_runtime_dependency "jekyll", "~> 4.3"
  spec.add_runtime_dependency "jekyll-feed", "~> 0.12"
  spec.add_runtime_dependency "jekyll-seo-tag", "~> 2.6"

  spec.add_development_dependency "bundler"
end
