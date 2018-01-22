require 'test_helper'

class FamilyMemoriesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @family_memory = family_memories(:one)
  end

  test "should get index" do
    get family_memories_url, as: :json
    assert_response :success
  end

  test "should create family_memory" do
    assert_difference('FamilyMemory.count') do
      post family_memories_url, params: { family_memory: { family_id: @family_memory.family_id, location: @family_memory.location, memory: @family_memory.memory, time: @family_memory.time, title: @family_memory.title, user_id: @family_memory.user_id } }, as: :json
    end

    assert_response 201
  end

  test "should show family_memory" do
    get family_memory_url(@family_memory), as: :json
    assert_response :success
  end

  test "should update family_memory" do
    patch family_memory_url(@family_memory), params: { family_memory: { family_id: @family_memory.family_id, location: @family_memory.location, memory: @family_memory.memory, time: @family_memory.time, title: @family_memory.title, user_id: @family_memory.user_id } }, as: :json
    assert_response 200
  end

  test "should destroy family_memory" do
    assert_difference('FamilyMemory.count', -1) do
      delete family_memory_url(@family_memory), as: :json
    end

    assert_response 204
  end
end
