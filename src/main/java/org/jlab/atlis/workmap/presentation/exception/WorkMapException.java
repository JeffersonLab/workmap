package org.jlab.atlis.workmap.presentation.exception;

import javax.servlet.ServletException;

/**
 *
 * @author ryans
 */
public class WorkMapException extends ServletException {
    public WorkMapException(String message) {
        super(message);
    }
}
