/*
 * @(#)PaintProgressListener.java
 *
 * Copyright (c) 1999 Sun Microsystems, Inc. All Rights Reserved.
 *
 * Sun grants you ("Licensee") a non-exclusive, royalty free, license to use,
 * modify and redistribute this software in source and binary code form,
 * provided that i) this copyright notice and license appear on all copies of
 * the software; and ii) Licensee does not utilize the software in a manner
 * which is disparaging to Sun.
 *
 * This software is provided "AS IS," without a warranty of any kind. ALL
 * EXPRESS OR IMPLIED CONDITIONS, REPRESENTATIONS AND WARRANTIES, INCLUDING ANY
 * IMPLIED WARRANTY OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE OR
 * NON-INFRINGEMENT, ARE HEREBY EXCLUDED. SUN AND ITS LICENSORS SHALL NOT BE
 * LIABLE FOR ANY DAMAGES SUFFERED BY LICENSEE AS A RESULT OF USING, MODIFYING
 * OR DISTRIBUTING THE SOFTWARE OR ITS DERIVATIVES. IN NO EVENT WILL SUN OR ITS
 * LICENSORS BE LIABLE FOR ANY LOST REVENUE, PROFIT OR DATA, OR FOR DIRECT,
 * INDIRECT, SPECIAL, CONSEQUENTIAL, INCIDENTAL OR PUNITIVE DAMAGES, HOWEVER
 * CAUSED AND REGARDLESS OF THE THEORY OF LIABILITY, ARISING OUT OF THE USE OF
 * OR INABILITY TO USE SOFTWARE, EVEN IF SUN HAS BEEN ADVISED OF THE
 * POSSIBILITY OF SUCH DAMAGES.
 *
 * This software is not designed or intended for use in on-line control of
 * aircraft, air traffic, aircraft navigation or aircraft communications; or in
 * the design, construction, operation or maintenance of any nuclear
 * facility. Licensee represents and warrants that it will not use or
 * redistribute the Software for such purposes.
 */

package com.sun.glf;

/**
 * Interface objects interested in <code>Composition</code>'s paint progress should implement.
 * A <code>Composition</code> can notify listeners of progress made in the paint operation. 
 * This way, listeners can take actions such as giving visual feedback to the user, which is
 * what the <code>{@link com.sun.glf.util.CompositionStudio CompositionStudio}</code> does.
 *
 * @author         Vincent Hardy
 * @version        1.0, 12/06/1998
 * @see            com.sun.glf.Commposition
 */
public interface PaintProgressListener {
  /**
   * Called when paint operation started.
   * @param paintSteps describes the number of paint steps in the begining paint operation.
   */
  public void paintStarted(Composition cmp, int paintSteps);

  /**
   * Called when a paint step completes
   * @param describes the step which is about to start.
   */
  public void paintStepStarted(Composition cmp, String stepDescription);

  /**
   * Called when paint operation terminates. Note that this may be called before all the
   * steps are completed, for example if an exception occurs during the paint process.
   */
  public void paintFinished(Composition cmp);
}
