package ch.ivyteam.codecamp;


import static org.assertj.core.api.Assertions.assertThat;

import org.apache.commons.lang3.SystemUtils;
import org.junit.Test;

import com.axonivy.code.camp19.Data;

import ch.ivyteam.ivy.bpm.exec.restricted.RequestBuilder.ExecutionResult;

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
	
	@Test
	public void callSimple() throws Exception
	{
		// extracted from normal designer start list URI 
		// (e.g. http://localhost:8082/ivy/pro/designer/codeCamp19/16CBDE25640EB8E8/start.ivp)
		String startIvp = "16CBDE25640EB8E8/start.ivp";
		
		// simplest process invocation: with no params, session or task configs:
		ExecutionResult result = request(startIvp).execute(); 
		assertThat(result).isNotNull();
		
		Data lastProcessData = (Data) result.getLastProcessData();
		assertThat(lastProcessData.getUsername())
			.as("can access data from the executed process")
			.isEqualTo("Mr. Junit");
	}
	
}
