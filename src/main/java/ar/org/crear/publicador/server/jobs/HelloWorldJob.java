package ar.org.crear.publicador.server.jobs;

import org.apache.log4j.Logger;
import org.quartz.JobExecutionContext;
import org.quartz.JobExecutionException;

public class HelloWorldJob implements Runnable, org.quartz.Job {

	private static final Logger LOG = Logger.getLogger(HelloWorldJob.class);

	@Override
	public void execute(JobExecutionContext arg0) throws JobExecutionException {
		LOG.info("Hola mundo");
	}

	@Override
	public void run() {
		LOG.info("Hola mundo");
		
	}
}
