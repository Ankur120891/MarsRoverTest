import io.cucumber.java.en.Given;
import io.cucumber.java.en.When;
import io.cucumber.java.en.Then;
import static org.junit.Assert.*;



public class RoverInitializationStepDefinitions {
    private Rover rover;

    @Given("a rover is deployed on Mars")
    public void createRover() {
        rover = new Rover();
    }

    @When("I set the rover's position to \\((\\d+), (\\d+)\\) and facing ([NSEW])")
    public void setRoverPosition(int x, int y, String direction) {
        int facing = getDirectionValue(direction);
        rover.setPosition(x, y, facing);
    }

    @Then("the rover's position and direction should be \\((\\d+), (\\d+), ([NSEW])\\)")
    public void verifyRoverPositionAndDirection(int x, int y, String direction) {
        int expectedFacing = getDirectionValue(direction);
        assertEquals(x, rover.x.intValue());
        assertEquals(y, rover.y.intValue());
        assertEquals(expectedFacing, rover.facing.intValue());
    }

    private int getDirectionValue(String direction) {
        switch (direction) {
            case "N":
                return Rover.N;
            case "E":
                return Rover.E;
            case "S":
                return Rover.S;
            case "W":
                return Rover.W;
            default:
                throw new IllegalArgumentException("Invalid direction: " + direction);
        }
    }
}


