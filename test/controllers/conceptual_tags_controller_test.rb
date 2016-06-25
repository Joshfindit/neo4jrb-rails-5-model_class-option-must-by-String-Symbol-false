require 'test_helper'

class ConceptualTagsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @conceptual_tag = conceptual_tags(:one)
  end

  test "should get index" do
    get conceptual_tags_url
    assert_response :success
  end

  test "should get new" do
    get new_conceptual_tag_url
    assert_response :success
  end

  test "should create conceptual_tag" do
    assert_difference('ConceptualTag.count') do
      post conceptual_tags_url, params: { conceptual_tag: { name: @conceptual_tag.name, related_id: @conceptual_tag.related_id, tagged_products_id: @conceptual_tag.tagged_products_id } }
    end

    assert_redirected_to conceptual_tag_url(ConceptualTag.last)
  end

  test "should show conceptual_tag" do
    get conceptual_tag_url(@conceptual_tag)
    assert_response :success
  end

  test "should get edit" do
    get edit_conceptual_tag_url(@conceptual_tag)
    assert_response :success
  end

  test "should update conceptual_tag" do
    patch conceptual_tag_url(@conceptual_tag), params: { conceptual_tag: { name: @conceptual_tag.name, related_id: @conceptual_tag.related_id, tagged_products_id: @conceptual_tag.tagged_products_id } }
    assert_redirected_to conceptual_tag_url(@conceptual_tag)
  end

  test "should destroy conceptual_tag" do
    assert_difference('ConceptualTag.count', -1) do
      delete conceptual_tag_url(@conceptual_tag)
    end

    assert_redirected_to conceptual_tags_url
  end
end
