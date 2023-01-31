require "test_helper"

class PagesControllerTest < ActionDispatch::IntegrationTest
  test "should get home" do
    get pages_home_url
    assert_response :success
  end

  test "should get about_us" do
    get pages_about_us_url
    assert_response :success
  end

  test "should get contact_us" do
    get pages_contact_us_url
    assert_response :success
  end

  test "should get faq" do
    get pages_faq_url
    assert_response :success
  end

  test "should get terms_of_service" do
    get pages_terms_of_service_url
    assert_response :success
  end

  test "should get privacy_policy" do
    get pages_privacy_policy_url
    assert_response :success
  end

  test "should get course_catalog" do
    get pages_course_catalog_url
    assert_response :success
  end

  test "should get testimonials" do
    get pages_testimonials_url
    assert_response :success
  end
end
