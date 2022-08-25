require 'task_formatter'

RSpec.describe TaskFormatter do
  it "formats the tasks" do 
    task1 = double(:task, title: "Walk the dog", complete?: true)
    task2 = double(:task, title: "Do laundry", complete?: false)
    formatter1 = TaskFormatter.new(task1)
    formatter2 = TaskFormatter.new(task2)
    expect(formatter1.format). to eq " - [x] Walk the dog"
    expect(formatter2.format). to eq " - [ ] Do laundry"
  end
end