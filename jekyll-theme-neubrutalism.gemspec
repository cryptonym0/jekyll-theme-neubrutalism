# frozen_string_literal: true

Gem::Specification.new do |spec|
  spec.name          = "jekyll-theme-neubrutalism"
  spec.version       = "0.2.0"
  spec.authors       = ["Elycia Finch"]
  spec.email         = ["elycia.finch@outlook.com"]

  spec.summary       = "A Neubrutalism (or Neo‑Brutalism) jekyll is a design style characterized by intentionally raw, high‑contrast UI elements."
  spec.homepage      = "https://github.com/cryptonym0/jekyll-theme-neubrutalism"
  spec.license       = "MIT"

  spec.metadata = {
    "bug_tracker_uri"   => "https://github.com/cryptonym0/jekyll-theme-neubrutalism/issues",
    "changelog_uri"     => "https://github.com/cryptonym0/jekyll-theme-neubrutalism/blob/prod/CHANGELOG.md",
    "documentation_uri" => "https://github.com/cryptonym0/jekyll-theme-neubrutalism#readme",
    "homepage_uri"      => "https://cryptonym0.github.io/jekyll-theme-neubrutalism/",
    "source_code_uri"   => "https://github.com/cryptonym0/jekyll-theme-neubrutalism"
  }

  spec.files         = `git ls-files -z`.split("\x0").select do |f|
    f.match(%r{^(assets|_layouts|_includes|_sass|LICENSE|README|CHANGELOG)(.*)?$}i)
  end

  spec.required_ruby_version = ">= 2.5.0"

  spec.add_runtime_dependency "jekyll", "~> 4.3"
  spec.add_runtime_dependency "jekyll-feed", "~> 0.12"
  spec.add_runtime_dependency "jekyll-seo-tag", "~> 2.6"

  spec.add_development_dependency "bundler", ">= 1.16"
  spec.add_development_dependency "rake", ">= 12.0"
end
