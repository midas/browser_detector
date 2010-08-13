module BrowserDetector
  module Rails
    module ViewHelpers
      
      # Returns the name of the browser that is making this request.  For example 'ie'.  When using 
      # the browser detector in the contoller you may put a :g_browser_detector variabe in the session if 
      # you wish to keep the BrowserDetector from being instantiated more than once per request.
      #
      def g_browser_name
        setup_detector
        @g_browser_detector.browser_name
      end

      # Returns the version of the browser that is making this request.  For example '7'.  When using 
      # the browser detector in the contoller you may put a :g_browser_detector variabe in the session if 
      # you wish to keep the BrowserDetector from being instantiated more than once per request.
      #
      def g_browser_version
        setup_detector
        @g_browser_detector.browser_version
      end

      # Returns the major version of the browser that is making this request.  For example '7'.  When using 
      # the browser detector in the contoller you may put a :g_browser_detector variabe in the session if 
      # you wish to keep the BrowserDetector from being instantiated more than once per request.
      #
      def g_browser_version_major
        setup_detector
        @g_browser_detector.browser_version_major
      end

      # Returns the major version of the browser that is making this request.  For example '7'.  When using 
      # the browser detector in the contoller you may put a :g_browser_detector variabe in the session if 
      # you wish to keep the BrowserDetector from being instantiated more than once per request.
      #
      def g_browser_version_minor
        setup_detector
        @g_browser_detector.browser_version_minor
      end

      # Returns the major version of the browser that is making this request.  For example '7'.  When using 
      # the browser detector in the contoller you may put a :g_browser_detector variabe in the session if 
      # you wish to keep the BrowserDetector from being instantiated more than once per request.
      #
      def g_browser_version_build
        setup_detector
        @g_browser_detector.browser_version_build
      end

      # Returns the full browser name.  For example, 'Internet Explorer 7.0'.
      #
      def g_browser_full_name
        setup_detector
        @g_browser_detector.browser_full_name
      end
      
      # Returns the browser name concatenated with the browser version.  for example, 'ie7'.  When using 
      # the browser detector in the contoller you may put a :g_browser_detector variabe in the session if 
      # you wish to keep the BrowserDetector from being instantiated more than once per request.
      #
      def g_browser_id
        setup_detector
        @g_browser_detector.browser_id
      end

      # Returns true if the browser matches the options ent in, otherwise returns false.  When using 
      # the browser detector in the contoller you may put a :g_browser_detector variable in the session if 
      # you wish to keep the Detector from being instantiated more than once per request.
      #
      # === Options
      # * +:name+ - The name of the browser.  For example 'ie'.
      # * +:version+ - The version of the browser.  For example '7'.
      #
      def g_browser_is?( options={} )
        setup_detector
        @g_browser_detector.browser_is?( options )
      end
      
      protected
      
      def setup_detector
        @g_browser_detector = session[:g_browser_detector] if respond_to?( :session )
        @g_browser_detector ||= BrowserDetector::Detector.new( request.env['HTTP_USER_AGENT'] )
      end
      
    end
  end
end