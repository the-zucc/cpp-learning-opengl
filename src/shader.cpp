//
// Created by laurier on 19-01-25.
//
#pragma once
#include <iostream>
#include <GL/glew.h>

static unsigned int compileShader(unsigned int type, const std::string& source){
    unsigned int id = glCreateShader(type);//GL_VERTEX_SHADER ?
    const char* src = source.c_str();//convert string to c string
    glShaderSource(id, 1, &src, NULL);//set the source for the buffer to be compiled
    glCompileShader(id);//compile the shader

    //shader compilation result
    int result;
    //get the shader compilation result
    glGetShaderiv(id, GL_COMPILE_STATUS, &result);
    //if the compilation result is GL_FALSE
    if(result == GL_FALSE){
        int length;//error message
        //get the error message's length
        glGetShaderiv(id, GL_INFO_LOG_LENGTH, &length);
        //allocate memory to store the message
        char* message = (char*)alloca(length * sizeof(char));
        //store the message
        glGetShaderInfoLog(id, length, &length, message);
        std::cout << "Failed to compile " <<
                    (type == GL_VERTEX_SHADER ? "vertex" : "fragment")
                    << "shader:" << std::endl <<
                    message << std::endl;
        glDeleteShader(id);
        return id;
    }

    return id;
}

static unsigned int createShader(const std::string& vertexShader , const std::string&fragmentShader){
    unsigned int program = glCreateProgram();
    unsigned int vs = compileShader(GL_VERTEX_SHADER, vertexShader);
    unsigned int fs = compileShader(GL_FRAGMENT_SHADER, fragmentShader);

    glAttachShader(program, vs);
    glAttachShader(program, fs);
    glLinkProgram(program);
    glValidateProgram(program);

    glDeleteShader(vs);
    glDeleteShader(fs);

    return program;
}
