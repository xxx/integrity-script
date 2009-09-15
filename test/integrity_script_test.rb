require "test/unit"
require "integrity/notifier/test"

begin
  require "redgreen"
rescue LoadError
end

require File.dirname(__FILE__) + "/../lib/integrity/notifier/script"

class IntegrityScriptTest < Test::Unit::TestCase
  include Integrity::Notifier::Test

  def notifier
    "Script"
  end

  def setup
    setup_database
  end

  def commit(status=:successful)
    Integrity::Commit.gen(status)
  end

  def teardown
    File.unlink(testing_file) if File.exist?(testing_file)
  end

  def test_it_passes_pass
    line = get_arg_for_status(:successful)
    assert_equal 'pass', line.chomp
  end

  def test_it_passes_fail
    line = get_arg_for_status(:failed)
    assert_equal 'fail', line.chomp
  end

  def test_it_passes_extra_args
    line = nil
    Integrity::Notifier::Script.new(commit,
                                    'script_path' => testing_script,
                                   'extra_args' => 'foobar').deliver!

    File.open(testing_file, 'r') do |f|
      f.gets # skip pass/fail
      line = f.gets
    end
    assert_equal 'foobar', line.chomp
  end

  def test_configuration_form
    assert form_have_tag? "#script_notifier_script_path"
    assert form_have_tag? "#script_notifier_extra_args"
  end

  private

  def get_arg_for_status(commit_status)
    line = nil
    Integrity::Notifier::Script.new(commit(commit_status),
                                    'script_path' => testing_script,
                                   'extra_args' => 'foobar').deliver!

    File.open(testing_file, 'r') do |f|
      line = f.gets
    end
    line
  end

  def testing_file
    File.join(File.dirname(__FILE__), 'shumway.txt')
  end

  def testing_script
    File.join(File.dirname(__FILE__), 'test_script.rb')
  end
end
