import jess.*;
public class test {
    public static void main(String[] args) { 
      try {
          Rete r = new Rete();
          r.executeCommand("(defrule main-backbone" + 
							"(initial-fact)" + 
							"=>" + 
							"(assert (why))" + 
							"(assert (live-in-soil " + args[0] + "))" +
							"(assert (flat-body " + args[1] + "))" +
							"(assert (body-in-segments " + args[2] + "))" +
							"(assert (animal-have-shell " + args[3] + "))" +
							"(assert (animal-have-tail " + args[4] + "))" +
							"(assert (many-cells " + args[5] + "))" +
							"(assert (animal-attached-to-object " + args[6] + "))" +
							"(assert (have-spike " + args[7] + "))" +
							"(assert (one-cell " + args[8] + "))" +
							"(assert (spiral-shaped-shell " + args[9] + "))" +
							"(assert (two-half-shells " + args[10] + "))" +
							")");

          r.executeCommand("(batch t.clp)");
          r.executeCommand("(reset)");
          r.executeCommand("(run)");

          // Prints '9'
          System.out.println(r.getGlobalContext());
        }
      catch (Exception ex)
        {
          System.err.println(ex);
        }
    	// System.out.println("a");
    }
}