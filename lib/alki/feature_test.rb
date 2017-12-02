require 'alki/test'

class Alki::FeatureSpec < Minitest::Spec
end

Minitest::Spec.register_spec_type Alki::FeatureSpec do |desc|
  desc.is_a? String
end

class << Alki::Test
  def feature_exec(&blk)
    Alki::FeatureSpec.class_exec(&blk)
  end

  def app(&blk)
    feature_exec do
      define_method(:app,&blk)
    end
  end
end

feature_test_helper = File.join(Alki::Test.tests_root,'feature_test_helper.rb')

if File.exist? feature_test_helper
  require feature_test_helper
end
