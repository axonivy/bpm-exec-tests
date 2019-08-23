package ch.ivyteam.codecamp;


import static org.assertj.core.api.Assertions.assertThat;

import java.util.List;

import org.apache.commons.lang3.SystemUtils;
import org.junit.Test;

import ch.ivyteam.ivy.bpm.exec.restricted.RequestBuilder.ExecutionResult;
import ch.ivyteam.ivy.process.model.value.PID;
import ch.ivyteam.ivy.workflow.ITask;

import com.axonivy.code.camp19.Data;

/**
 * Proofs that ivy-project devs can already write <code>bpm.exec.tests</code>.
 * This approach mainly works via:
 * <ul>
 *   <li>re-using internal ivy-core base classes</li>
 *   <li>converting the test project to a plugin-project</li>
 *   <li>declaring many deps of the ivy-core + its test in META-INF/MANIFEST.MF to get access to internals of the core</li>
 * </ul>
 * 
 * @author rew
 */
public class TestSimple extends ch.ivyteam.ivy.bpm.exec.restricted.AbstractProcessElementExecutorTest{

	private static final String PROJECT_TEST_CAMP_19_PATH = SystemUtils.USER_DIR+"/../codeCamp19";
	
	public TestSimple() 
	{ 
		super(PROJECT_TEST_CAMP_19_PATH);
	}
	
	// extracted from normal designer start list URI 
	// (e.g. http://localhost:8082/ivy/pro/designer/codeCamp19/16CBDE25640EB8E8/start.ivp)
	private String startIvp = "16CBDE25640EB8E8/start.ivp";
	
	@Test
	public void callSimple() throws Exception
	{
		// simplest process invocation: with no params, session or task configs:
		ExecutionResult result = request(startIvp).execute(); 
		assertThat(result).isNotNull();
		
		Data lastProcessData = (Data) result.getLastProcessData();
		assertThat(lastProcessData.getUsername())
			.as("can access data from the executed process")
			.isEqualTo("Mr. Junit");
	}
	
	@Test
	public void callWithParams() throws Exception
	{
		Data data = (Data) request(startIvp)
		    // pass parameters to the startRequest (see it's start signature parameters)
			.withParam("message", "Hey there, glad to see you care about quality")
			.execute()
			.getLastProcessData();
		assertThat(data.getMessage()).contains("glad to see you");
	}
	
	private PID simpleProcess = new PID("16CBDE25640EB8E8");

	@Test
	public void assertExecutionFlow() throws Exception
	{

		ExecutionResult result = request(startIvp).withParam("dollars", "24").execute();
		// can assert execution flow via visited process element IDs
		assertThat(result.getVisitedElementPids())
			.as("normal task end for credit < 200 $")
			.endsWith(simpleProcess.createChild("f1"));
		
		ExecutionResult result2 = request(startIvp).withParam("dollars", "201").execute();
		assertThat(result2.getVisitedElementPids())
			.as("supervsisor approval for credit >= 200 $")
			.endsWith(simpleProcess.createChild("f7"));
	}
	
	@Test
	public void simulate_userWorksOnTask() throws Exception
	{
		PID simpleProcess = new PID("16CBDE25640EB8E8");
		
		ExecutionResult result = request(startIvp).withParam("dollars", "201").execute();
		assertThat(result.getVisitedElementPids())
			.as("supervsisor approval for credit >= 200 $")
			.endsWith(simpleProcess.createChild("f7"));
		
		List<ITask> activeTasks = result.getRequestedCase().getActiveTasks();
		assertThat(activeTasks).hasSize(1);
		ITask supervisorTask = activeTasks.get(0);
		assertThat(supervisorTask.getActivatorName())
			.isEqualTo("line-manager");
	    assertThat(supervisorTask.getName())
	    	.isEqualTo("Check credit request 201$ from Mr. Junit");
//	    ExecutionResult resumed = resumeRequest(supervisorTask).execute();
//	    assertThat(resumed.getRequestedCase().getState()).isEqualTo(CaseState.DONE);
	}
	
}
