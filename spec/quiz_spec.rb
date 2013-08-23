require_relative '../quiz'
#  __    __    _______  __    __
# |  |  |  |  /  _____||  |  |  |
# |  |  |  | |  |  __  |  |__|  |
# |  |  |  | |  | |_ | |   __   |
# |  `--'  | |  |__| | |  |  |  |
#  \______/   \______| |__|  |__|

describe "a quiz" do
  it "should be about Ruby and Testing in Rspec" do
    expect(QUIZ_TOPICS).to include("ruby")
    expect(QUIZ_TOPICS).to include("rspec")
    expect(QUIZ_TOPICS).to include("testing")
  end
end

describe "creating a quiz object" do
  it "should create a new quiz object" do
    quiz_1 = Quiz.new
    expect(quiz_1.is_a? Object).to be_true
  end
end

describe "adding a number to the quiz object" do
  it "should add a number to the quiz object" do
    quiz_1 = Quiz.new
    quiz_1.add(3)
    quiz_1.add(5)
    expect(quiz_1.numbers).to include(3)
    expect(quiz_1.numbers).to include(5)
  end
end

describe "seeing an added number" do
  it "should put the added number into a numbers array" do
    quiz_1 = Quiz.new
    quiz_1.add(3)
    quiz_1.add(5)
    expect(quiz_1.numbers).to eq([3,5])
  end
end

describe "adding strings into the numbers array" do
  it "should only allow numbers to be added" do
    quiz_1 = Quiz.new
    quiz_1.add(3)
    quiz_1.add(5)
    quiz_1.add("7")
    expect(quiz_1.numbers).to eq([3,5])
  end
end


# more in quiz.rb!