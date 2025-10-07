package org.jlab.atlis.workmap.presentation.exception;

import jakarta.servlet.ServletException;

/**
 * @author ryans
 */
public class WorkMapException extends ServletException {
  public WorkMapException(String message) {
    super(message);
  }
}
