require 'test_helper'

class Admin::ImagesControllerTest < ActionController::TestCase

  setup do
    set_default_settings
    sign_in users(:admin)
  end

  test "Should be able to create an image" do
    assert_difference 'Image.count', +1 do
      post :create, params: {
        image: {
          name: name,
          file: Rack::Test::UploadedFile.new(Rails.root.join('test/fixtures/files/logo.png'), 'image/png')
        },
        format: 'json'
      }
    end
  end

  test "Should be able to delete an image" do
    @image = Image.create(name: 'test')
    assert_difference 'Image.count', -1 do
      delete :destroy, params: {
        id: @image.id,
        format: 'json'
      }
    end
  end

end
