import static org.junit.Assert.assertEquals;

import org.junit.Test;

import customTools.ProcessStudentReg;

public class TestDrop {
	@Test
	   public void test_drop() {
		
		System.out.println("Test if class is dropped") ;
		ProcessStudentReg.dropClass(3, 1);
		System.out.println("drop");
	      assertEquals(ProcessStudentReg.getRecord(3, 1).getGrade(),"W") ;
	   }
}
