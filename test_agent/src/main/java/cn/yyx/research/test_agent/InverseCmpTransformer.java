package cn.yyx.research.test_agent;

import java.lang.instrument.ClassFileTransformer;
import java.lang.instrument.IllegalClassFormatException;
import java.security.ProtectionDomain;
import java.util.LinkedList;
import java.util.List;

import cn.yyx.research.trace.instrument.SimpleInstrumenter;

public class InverseCmpTransformer implements ClassFileTransformer {
	
	List<String> flowers = new LinkedList<String>();
	SimpleInstrumenter simple_inst = new SimpleInstrumenter();
	
	public InverseCmpTransformer(List<String> flowers) {
		for (String flower : flowers) {
			System.out.println("flower:" + flower);
		}
		this.flowers.addAll(flowers);
	}
	
	@Override
	public byte[] transform(ClassLoader loader, String className, Class<?> classBeingRedefined,
			ProtectionDomain protectionDomain, byte[] classfileBuffer) throws IllegalClassFormatException {
		String classname = className.replace('/', '.');
		if (InFlowers(classname)) {
			return simple_inst.InstrumentOneClass(className, classfileBuffer);
		}
		return null;
	}
	
	protected boolean InFlowers(String class_name) {
		for (String flower : flowers) {
			if (class_name.startsWith(flower)) {
				return true;
			}
		}
		return false;
	}
	
}
