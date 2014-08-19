module QrCodeHelper

	def generate_qr_code_image(size, url)
	  "https://chart.googleapis.com/chart?cht=qr&chs=#{size}x#{size}&chl=#{CGI.escape(url)}"
	end

end