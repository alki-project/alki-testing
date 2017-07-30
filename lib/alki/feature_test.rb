require 'alki/test'

feature_test_helper = File.join(Alki::Test.tests_root,'feature_test_helper.rb')

if File.exist? feature_test_helper
  require feature_test_helper
end
