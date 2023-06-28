import io.cucumber.java.en.And;

public class RoverInitMoveStepDefinitions {
    @And("the rover's position is set to \\((\\d+), (\\d+)\\) and facing ([NSEW])")
    public void setRoverPositionAndDirection(int x, int y, String direction) {
        int facing = getDirectionValue(direction);
        rover.setPosition(x, y, facing);
    }

    @When("I move the rover using the command {string}")
    public void moveRover(String command) {
        rover.process(command);
    }
}


