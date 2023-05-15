begin
  class SimulateCapture
    def initialize
      @btn_advance_options = { xpath: '//XCUIElementTypeStaticText[@name="Advanced Actions"]' }
      @btn_scan_check = { xpath: '//XCUIElementTypeStaticText[@name="Scan Check"]' }
      @btn_scan = { xpath: '//XCUIElementTypeStaticText[@name="Scan check"]' }
      @btn_done = { xpath: '//*[@label="Done"]' }
    end

    def click_advance_options
      PageHelper.click_element(@btn_advance_options)
    end

    def click_scan_check
      PageHelper.click_element(@btn_scan_check)
    end

    def click_scan
      PageHelper.click_element(@btn_scan)
    end

    def click_file_scan
      sleep 5
      PageHelper.simulate_capture('https://images.migrosone.com/macrocenter/product/7037068/07037068_yan-2f19aa-1650x1650.jpg')
      sleep 5
      PageHelper.click_element(@btn_done)
    end
  end
end
