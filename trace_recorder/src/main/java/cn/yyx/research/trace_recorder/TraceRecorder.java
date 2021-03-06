package cn.yyx.research.trace_recorder;

import java.io.File;
import java.io.FileWriter;
import java.io.IOException;

/**
 * Hello world!
 *
 */
public class TraceRecorder {

	private static StringBuffer buffer = new StringBuffer();
	static {
		Runtime.getRuntime().addShutdownHook(new Thread(new Runnable() {
			public void run() {
				Flush();
			}
		}));
	}
	
	public static void Append(String x) {
		buffer.append(x + "#");
	}
	
	public static void Append(int x) {
		buffer.append(x + "#");
	}
	
	public static void Append(float x) {
		buffer.append(x + "#");
	}
	
	public static void Append(long x) {
		buffer.append(x + "#");
	}
	
	public static void Append(double x) {
		buffer.append(x + "#");
	}
	
	public static void NewLine() {
		buffer.append(System.getProperty("line.separator"));
	}
	
	public static void Flush() {
		File f = new File(System.getProperty("user.home") + "/" + "trace.txt");
		FileWriter writer = null;
		try {
			writer = new FileWriter(f);
			writer.write(buffer.toString());
		} catch (IOException e) {
			e.printStackTrace();
		} finally {
			if (writer != null) {
				try {
					writer.close();
				} catch (IOException e) {
					e.printStackTrace();
				}
			}
		}
	}
	
}
