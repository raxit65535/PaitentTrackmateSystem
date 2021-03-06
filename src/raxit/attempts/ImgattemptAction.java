/*
 * Generated by MyEclipse Struts
 * Template path: templates/java/JavaClass.vtl
 */
package raxit.attempts;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.RandomAccessFile;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;
import org.apache.struts.upload.FormFile;
import org.hibernate.Hibernate;
import org.hibernate.HibernateException;
import org.hibernate.Session;
import org.hibernate.Transaction;
import org.jboss.util.file.Files;
import java.sql.Blob;

import com.raxit.hibernate.HibernateUtil;

/** 
 * MyEclipse Struts
 * Creation date: 08-22-2013
 * 
 * XDoclet definition:
 * @struts.action path="/imgattempt" name="imgattemptForm" input="/attempt/imgattempt.jsp" scope="request" validate="true"
 */
public class ImgattemptAction extends Action {
	/*
	 * Generated Methods
	 */

	/** 
	 * Method execute
	 * @param mapping
	 * @param form
	 * @param request
	 * @param response
	 * @return ActionForward
	 */
	public ActionForward execute(ActionMapping mapping, ActionForm form,
			HttpServletRequest request, HttpServletResponse response) {
		ImgattemptForm imgattemptForm = (ImgattemptForm) form;// TODO Auto-generated method stub
		
		 Session session = HibernateUtil.getSessionFactory().openSession();
		    Transaction transaction = null;
   try {
	   		transaction = session.beginTransaction();
		    String _name = imgattemptForm.getName();
		    File file = imgattemptForm.getContent();
		    byte[] temp = new byte[(int) file.length()];
		    try {
       	     	FileInputStream fileInputStream = new FileInputStream(file);
       	     	//convert file into array of bytes
       	     	fileInputStream.read(temp);
       	     	fileInputStream.close();
            } catch (Exception e) {
       	     	e.printStackTrace();
            }
            Blob content = Hibernate.createBlob(temp);
            Bean ob1 = new Bean();
            ob1.setName(_name);
            ob1.setContent(content);
            session.save(ob1);
            transaction.commit();
       }catch (HibernateException e) {
	            transaction.rollback();
	            e.printStackTrace();
	        } finally {
	            session.close();
	        }
		/*FileInputStream fis = null;
		FileOutputStream fos = null;
		
		
		String _name = imgattemptForm.getName();
		File file = imgattemptForm.getContent();
		String n = file.getName();
		RandomAccessFile f;
		byte[] temp = null;
		try {
			f = new RandomAccessFile(n,"r");
			temp = new byte[(int) f.length()];
			f.read(temp);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		//byte[] temp =new byte[(int) file.length()];
		
		/*try {
			fis = new FileInputStream(file);
			fis.read(temp);
			fis.close();
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		  //String filePath = System.getProperty("java.io.tmpdir") + "/" + imgattemptForm.getContent().getFileName();
		//tring imgname = file.getFileName();
		
			System.out.println(file);
				System.out.println(_name);
		
		/*FormFile _image = imgattemptForm.getContent();
		String imgname = _image.getFileName();
		String imagcontenttype = _image.getContentType();
		int size = _image.getFileSize();
		byte[] _content;
		try {
			_content = _image.getFileData();
		} catch (FileNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		System.out.println(imgname);
		System.out.println(imagcontenttype);
		System.out.println(size);
		
		
	     
		Blob blob = (Blob) Hibernate.createBlob(temp);
		Session session = HibernateUtil.getSessionFactory().openSession();
		Transaction tr = session.beginTransaction();
		Bean ob1 = new Bean();
		ob1.setName(_name);
		ob1.setContent(blob);
		
		session.save(ob1);
		tr.commit();
		session.close();*/
		return mapping.findForward("success");
	}
}