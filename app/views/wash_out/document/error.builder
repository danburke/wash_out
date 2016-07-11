xml.instruct!
xml.tag! "soap:Envelope", "xmlns:soap" => 'http://schemas.xmlsoap.org/soap/envelope/' do
  xml.tag! "soap:Body" do
    xml.tag! "soap:Fault" do
      xml.faultcode error_code
      xml.faultstring error_message
      if detail != nil
        xml.tag! "detail" do
          detail.each{|k, v|
            xml.tag!(k, v)
          }
        end
      end
    end
  end
end
