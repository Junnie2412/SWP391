/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controllers.learning;

import course.LessonDTO;
import course.ModuleDAO;
import course.ModuleDTO;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import learningCourse.LearningCourseDAO;
import learningCourse.LearningCourseDTO;
import progress.ProgressDAO;
import users.UserDTO;

/**
 *
 * @author HOANG DUNG
 */
@WebServlet(name = "ViewVideoController", urlPatterns = {"/ViewVideoController"})
public class ViewVideoController extends HttpServlet {

    private static final String ERROR = "learning.jsp";
    private static final String SUCCESS = "course-learning.jsp";

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");

        String url = ERROR;
        try {
            HttpSession session = request.getSession();
            UserDTO loginUser = (UserDTO) session.getAttribute("LOGIN_USER");
            
            String courseID = request.getParameter("courseID");
            String title = request.getParameter("title");
            String video = request.getParameter("video");
            String description = request.getParameter("description");
            String videoID = request.getParameter("videoID");

            ModuleDAO moduleDAO = new ModuleDAO();
            List<ModuleDTO> listModule = moduleDAO.getModulesByCourseId(courseID);
            
            int count1 = 0;
            int count2 = 0;
            
            for (ModuleDTO module : listModule) {
                List<LessonDTO> listLesson = moduleDAO.getLessonList(module.getModuleID());
                request.setAttribute("LIST_LESSON_" + count1, listLesson);
                for (LessonDTO lesson : listLesson) {
                    if (title == null && video == null && description == null && videoID == null) {
                        title = lesson.getTitle();
                        description = lesson.getDescription();
                        video = moduleDAO.getVideo(lesson.getLessonID()).getContent();
                        videoID = String.valueOf(moduleDAO.getVideo(lesson.getLessonID()).getVideoID());
                    }
                    request.setAttribute("LESSON_VIDEO_" + count2, moduleDAO.getVideo(lesson.getLessonID()).getContent());
                    request.setAttribute("LESSON_VIDEO_ID_" + count2, String.valueOf(moduleDAO.getVideo(lesson.getLessonID()).getVideoID()));
                    count2++;
                }
                count1++;
            }
            
            ProgressDAO progressDAO = new ProgressDAO();
            LearningCourseDAO learningCourseDAO = new LearningCourseDAO();

            int learningCourseID = learningCourseDAO.getLearningCourseID(loginUser.getAccountID(), courseID);
            
            boolean checkExistProgress = progressDAO.checkExistProgress(learningCourseID, Integer.parseInt(videoID));
            if(videoID != null && !checkExistProgress){
                boolean check = progressDAO.createProgress(learningCourseID, Integer.parseInt(videoID));
            }

            request.setAttribute("LIST_MODULE", listModule);
            request.setAttribute("TITLE", title);
            request.setAttribute("VIDEO", video);
            request.setAttribute("DESCRIPTION", description);
            request.setAttribute("COURSEID", courseID);
            request.setAttribute("VIDEOID", videoID);
            
            url = SUCCESS;

        } catch (Exception e) {
            log("Error at LearningController " + e.toString());
        } finally {
            request.getRequestDispatcher(url).forward(request, response);
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
