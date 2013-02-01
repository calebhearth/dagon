desc "Build freshly"
task default: [:clean, :build]

namespace :build do
  desc "Build scanner"
  task scanner: "build/scanner.rb"

  desc "Build parser"
  task parser: "build/parser.rb"

  namespace :debug do
    task :parser do
      `racc -g -v -O build/parser.output -o build/parser.rb dagon/generator.y`
    end
  end
end

desc "Build tokenizer and AST generator"
task build: %w{build:scanner build:parser}
task debug: %w{build:scanner build:debug:parser}

desc "Remove generated files"
task :clean do
  if File.exists?('build/')
    `rm -r build`
  end
end

file "build/parser.rb" => "dagon/generator.y" do
  `mkdir -p build/`
  `racc -g -o build/parser.rb dagon/generator.y`
end
file "build/scanner.rb" => "dagon/tokenizer.rl" do
  `mkdir -p build/`
  `ragel -R dagon/tokenizer.rl -o build/scanner.rb`
end

task test: :default do
  puts `rspec`
end
