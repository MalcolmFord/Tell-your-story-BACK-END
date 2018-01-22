require 'test_helper'

class PersonalMemoriesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @personal_memory = personal_memories(:one)
  end

  test "should get index" do
    get personal_memories_url, as: :json
    assert_response :success
  end

  test "should create personal_memory" do
    assert_difference('PersonalMemory.count') do
      post personal_memories_url, params: { personal_memory: { date: @personal_memory.date, location: @personal_memory.location, memory: @personal_memory.memory, time: @personal_memory.time, title: @personal_memory.title, user_id: @personal_memory.user_id } }, as: :json
    end

    assert_response 201
  end

  test "should show personal_memory" do
    get personal_memory_url(@personal_memory), as: :json
    assert_response :success
  end

  test "should update personal_memory" do
    patch personal_memory_url(@personal_memory), params: { personal_memory: { date: @personal_memory.date, location: @personal_memory.location, memory: @personal_memory.memory, time: @personal_memory.time, title: @personal_memory.title, user_id: @personal_memory.user_id } }, as: :json
    assert_response 200
  end

  test "should destroy personal_memory" do
    assert_difference('PersonalMemory.count', -1) do
      delete personal_memory_url(@personal_memory), as: :json
    end

    assert_response 204
  end
end
