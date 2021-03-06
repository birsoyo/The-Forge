#version 450 core

/*
 * Copyright (c) 2018-2019 Confetti Interactive Inc.
 * 
 * This file is part of The-Forge
 * (see https://github.com/ConfettiFX/The-Forge).
 * 
 * Licensed to the Apache Software Foundation (ASF) under one
 * or more contributor license agreements.  See the NOTICE file
 * distributed with this work for additional information
 * regarding copyright ownership.  The ASF licenses this file
 * to you under the Apache License, Version 2.0 (the
 * "License"); you may not use this file except in compliance
 * with the License.  You may obtain a copy of the License at
 * 
 *   http://www.apache.org/licenses/LICENSE-2.0
 * 
 * Unless required by applicable law or agreed to in writing,
 * software distributed under the License is distributed on an
 * "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY
 * KIND, either express or implied.  See the License for the
 * specific language governing permissions and limitations
 * under the License.
*/

layout(location = 0) in vec3 vs_Pos;   
layout(location = 1) in vec3 vs_Nor; 

layout(location = 0) out vec2 fs_UV;

void main()
{
    if(gl_VertexIndex == 0)
    {
        gl_Position = vec4(-1.0, -1.0, 0.999998, 1.0);
        fs_UV = vec2(0.0, 1.0);
    }
    else if(gl_VertexIndex == 2)
    {
        gl_Position = vec4(1.0, -1.0, 0.999998, 1.0);
        fs_UV = vec2(1.0, 1.0);
    }
    else if(gl_VertexIndex == 1)
    {
        gl_Position = vec4(1.0, 1.0, 0.999998, 1.0);
        fs_UV = vec2(1.0, 0.0);
    }
	else if(gl_VertexIndex == 3)
    {
        gl_Position = vec4(-1.0, -1.0, 0.999998, 1.0);
        fs_UV = vec2(0.0, 1.0);
    }
	else if(gl_VertexIndex == 5)
    {
        gl_Position = vec4(1.0, 1.0, 0.999998, 1.0);
        fs_UV = vec2(1.0, 0.0);
    }
    else if(gl_VertexIndex == 4)
    {
        gl_Position = vec4(-1.0, 1.0, 0.999998, 1.0);
        fs_UV = vec2(0.0, 0.0);
    }
}
