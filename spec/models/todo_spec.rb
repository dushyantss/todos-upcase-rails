require 'rails_helper'

describe Todo, '#completed?' do
  it 'returns true if completed_at is set' do
    todo = Todo.new(completed_at: Time.current)

    expect(todo).to be_completed
  end

  it 'returns false if completed_at is nil' do
    todo = Todo.new(completed_at: nil)

    expect(todo).to_not be_completed
  end
end

describe Todo, '#complete!' do
  it 'updates completed_at' do
    todo = Todo.create!(email: 'someone@exammple.com')
    expect(todo.completed_at).to be_nil

    todo.complete!
    expect(todo.completed_at).not_to be_nil
  end
end
