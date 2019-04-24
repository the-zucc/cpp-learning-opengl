/**
 * To get the window open, I have been following the tutorial here:
 * https://www.khronos.org/opengl/wiki/Programming_OpenGL_in_Linux:_GLX_and_Xlib

 * To draw the triangle and create the shaders, tutorials from
 *      -> https://www.youtube.com/thechernoproject <-
 * were used.
 * here is the specific playlist -> https://www.youtube.com/playlist?list=PLlrATfBNZ98foTJPJ_Ev03o2oq3-GGOS2
 */
#include<stdio.h>
#include<stdlib.h>
#include<time.h>

//#include<X11/X.h>
//#include<X11/Xlib.h>

#include<GL/glew.h>

//#include<GL/gl.h>

#include<GL/glx.h>

//#include<GL/glu.h>

#include "shader.cpp"


Display *dpy;
Window root;
GLint att[] = {GLX_RGBA, GLX_DEPTH_SIZE, 24, GLX_DOUBLEBUFFER, None};
XVisualInfo *vi;
Colormap cmap;
XSetWindowAttributes swa;
Window win;
GLXContext glc;
XWindowAttributes gwa;
XEvent xev;


void DrawASquare() {
    glClearColor(1.0, 1.0, 1.0, 1.0);
    glClear(GL_COLOR_BUFFER_BIT | GL_DEPTH_BUFFER_BIT);

    glMatrixMode(GL_PROJECTION);
    glLoadIdentity();
    glOrtho(-1., 1., -1., 1., 1., 20.);

    glMatrixMode(GL_MODELVIEW);
    glLoadIdentity();
    gluLookAt(0., 0., 10., 0., 0., 0., 0., 1., 0.);

    float positions[] = {-0.5f, -0.5f,
                         0.5f, -0.5f,
                         0.5, 0.5f,
                         -0.5f, 0.5f};

    unsigned int positionBufferObject;
    //generate a buffer
    glGenBuffers(1, &positionBufferObject);
    //select buffer id to send to the GPU, for the next draw call.
    glBindBuffer(GL_ARRAY_BUFFER, positionBufferObject);

    //fill the buffer with the vertices
    //glBufferData(GL_ARRAY_BUFFER, 6 * 2 * sizeof(float), positions, GL_STATIC_DRAW);
    glBufferData(GL_ARRAY_BUFFER, 8 * sizeof(float), positions, GL_STATIC_DRAW);
    //set vertex attribute for position
    glVertexAttribPointer(0, 2, GL_FLOAT, GL_FALSE, sizeof(float) * 2, 0);
    //enable "position" vertex attribute
    glEnableVertexAttribArray(0);

    unsigned int indices[] = {0,1,2,//first triangle
                     2,3,0};//second triangle

    unsigned int indexBufferObject;
    //generate a buffer
    glGenBuffers(1, &indexBufferObject);
    //select buffer id to send to the GPU, for the next draw call.
    glBindBuffer(GL_ELEMENT_ARRAY_BUFFER, indexBufferObject);
    //fill the buffer with the vertices
    glBufferData(GL_ELEMENT_ARRAY_BUFFER, 6 * sizeof(unsigned int), indices, GL_STATIC_DRAW);
    //set vertex attribute for position

    //draw selected buffer
    glDrawElements(GL_TRIANGLES, 6, GL_UNSIGNED_INT, nullptr);

}

void openWindow() {
    dpy = XOpenDisplay(NULL);

    if (dpy == NULL) {
        printf("\n\tcannot connect to X server\n\n");
        exit(0);
    }

    root = DefaultRootWindow(dpy);

    vi = glXChooseVisual(dpy, 0, att);

    if (vi == NULL) {
        printf("\n\tno appropriate visual found\n\n");
        exit(0);
    } else {
        printf("\n\tvisual %p selected\n", (void *) vi->visualid); /* %p creates hexadecimal output like in glxinfo */
    }

    cmap = XCreateColormap(dpy, root, vi->visual, AllocNone);

    swa.colormap = cmap;
    swa.event_mask = ExposureMask | KeyPressMask;

    //create window
    win = XCreateWindow(dpy, root, 0, 0, 1920, 1080, 0, vi->depth, InputOutput, vi->visual, CWColormap | CWEventMask,
                        &swa);

    //make the window appear
    XMapWindow(dpy, win);

    //change the string in the title bar
    XStoreName(dpy, win, "My First OpenGL Window");
}

void createRenderingContext() {

    //create the rendering context
    glc = glXCreateContext(dpy, vi, NULL, GL_TRUE);

    //set the rendering context to current
    glXMakeCurrent(dpy, win, glc);
}


int main(int argc, char *argv[]) {
    std::string vertexShader = "";
    std::string fragmentShader = "";
    parseShader("../res/shader/basic.shader", vertexShader, fragmentShader);
    std::cout << vertexShader << std::endl;
    std::cout << fragmentShader << std::endl;

    openWindow();

    createRenderingContext();

    glewInit();

    glEnable(GL_DEPTH_TEST);

    unsigned int shader = createShader(vertexShader, fragmentShader);

    int colorLocation = glGetUniformLocation(shader, "u_color");

    glUseProgram(shader);
    float color = 0.0f;
    float increment = 0.05f;

    while (1) {
        XNextEvent(dpy, &xev);

        if (xev.type == Expose) {
            if(color<0)
                increment=-increment;
            else if(color>1)
                increment=-increment;
            color+=increment;

            glUniform4f(colorLocation, color, -color, color, 1.0f);
            XGetWindowAttributes(dpy, win, &gwa);
            glViewport(0, 0, gwa.width, gwa.height);
            DrawASquare();
            glXSwapBuffers(dpy, win);

            XEvent expose = {Expose};
            expose.xexpose.window = win;
            XSendEvent(dpy,win,false,ExposureMask, &expose);
        } else if (xev.type == KeyPress) {
            glDeleteProgram(shader);
            glXMakeCurrent(dpy, None, NULL);
            glXDestroyContext(dpy, glc);
            XDestroyWindow(dpy, win);
            XCloseDisplay(dpy);
            exit(0);
        }
    }
}