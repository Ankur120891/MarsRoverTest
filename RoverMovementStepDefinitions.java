import io.cucumber.java.en.Given;
import io.cucumber.java.en.Then;
import io.cucumber.java.en.When;

public class RoverMovementStepDefinitions {

	
    @Given("the plateau has upper-right coordinates of {int} {int}")
    public void setPlateauCoordinates(int upperRightX, int upperRightY) {
        // Set the plateau coordinates if needed
    }

    @When("I move the rover using the command {string}")
    public void moveRover(String command) {
        rover.process(command);
    }

    @Then("the rover's final position and heading should be {int} {int} {string}")
    public void verifyRoverPositionAndHeading(int finalX, int finalY, String finalHeading) {
        char expectedHeading = finalHeading.charAt(0);
        rover.printPosition(); // Compare the printed position with the expected values
    }
}


