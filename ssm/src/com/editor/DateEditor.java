package com.editor;

import java.beans.PropertyEditorSupport;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

public class DateEditor extends PropertyEditorSupport {

	@Override
	public void setAsText(String text) throws IllegalArgumentException {
		Date date = null;
		SimpleDateFormat format = new SimpleDateFormat("yyyy-MM");
		try {
			date = format.parse(text);
		} catch (ParseException e) {
			e.printStackTrace();
		}
		this.setValue(date);
	}
}
