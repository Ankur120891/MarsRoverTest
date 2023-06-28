import io.cucumber.junit.Cucumber;
import io.cucumber.junit.CucumberOptions;
import org.junit.runner.RunWith;

@RunWith(Cucumber.class)
@CucumberOptions(features = "/MarsRoverTest/src", tags="@Initialization, @Initmove, @Movement",  format = {"pretty"} )
public class TestRunner {
	
}