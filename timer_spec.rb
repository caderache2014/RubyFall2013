require './code_timer.rb'

describe CodeTimer do
  
  it "should run our code" do
    flag = false
    CodeTimer.time_code do
      #test that block actually gets run
      flag = true
    end
    flag.should eq true
  end


  it "should time our code" do
    Time.stub(:now).and_return(0,3)
    run_time = CodeTimer.time_code do
    end
    #we are 'faking' time
    run_time.should be_within(0.1).of(3.0)
  end


  it "should run our code multiple times" do
    i = 0
    CodeTimer.time_code(10) { i += 1}
    i.should eq 10
  end

  it "should give average time" do
    run_time = CodeTime.time_code(10){
      sleep(1)
    }
    run_time.should be_within(0.1).of(1.0)
 end
  
end
