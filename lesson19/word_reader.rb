class WordReader
	def read_from_file(file_name)
		begin
			f = File.new(file_name, 'r')
			lines = f.readlines
			f.close
			lines.sample.chomp
		rescue SystemCallError => error
			abort "Файл не найден в указанной директории. Системное сообщение: #{error}"
		end
	end
end
# class WordReader
# 	def read_from_file(file_name)
# 		if File.exist?(file_name)
# 			f = File.new(file_name, 'r')
# 			lines = f.readlines
# 			f.close
# 			lines.sample.chomp
# 		else
# 			return nil
# 		end
# 	end
# end