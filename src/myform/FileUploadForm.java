package myform;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts.action.ActionErrors;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionMapping;
import org.apache.struts.action.ActionMessage;
import org.apache.struts.upload.FormFile;

public class FileUploadForm extends ActionForm {

	private FormFile file;

	public FormFile getFile() {
		return file;
	}

	public void setFile(FormFile file) {
		this.file = file;
	}

	@Override
	public ActionErrors validate(ActionMapping mapping,
			HttpServletRequest request) {

		ActionErrors errors = new ActionErrors();

		if (getFile().getFileSize() == 0) {
			errors.add("common.file.err", new ActionMessage(
					"error.common.file.required"));
			return errors;
		}

		// only allow text file to upload
		/*if (!"text/plain".equals(getFile().getContentType())) {
			errors.add("common.file.err.ext", new ActionMessage(
					"error.common.file.textfile.only"));
			return errors;
		}*/

		// file size can't larger than 10kb
		System.out.println(getFile().getFileSize());
		if (getFile().getFileSize() > 1024000) { // 1000kb
			errors.add("common.file.err.size", new ActionMessage(
					"error.common.file.size.limit", 1024000));
			return errors;
		}

		return errors;

	}

	@Override
	public void reset(ActionMapping mapping, HttpServletRequest request) {

		this.file = null;

	}

}
