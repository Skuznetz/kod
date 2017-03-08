names =["Иван","Пётр","Егор"]
names.each {|name| puts name}


 # File.open "/tmp/blocks.txt", "w" { |f| f.puts "hello world"}
a = File.open "blocks.txt","w"
a.write "port"
a.close