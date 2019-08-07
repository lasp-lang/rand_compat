%% -------------------------------------------------------------------
%%
%% Copyright (c) 2016 Christopher Meiklejohn.  All Rights Reserved.
%%
%% This file is provided to you under the Apache License,
%% Version 2.0 (the "License"); you may not use this file
%% except in compliance with the License.  You may obtain
%% a copy of the License at
%%
%%   http://www.apache.org/licenses/LICENSE-2.0
%%
%% Unless required by applicable law or agreed to in writing,
%% software distributed under the License is distributed on an
%% "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY
%% KIND, either express or implied.  See the License for the
%% specific language governing permissions and limitations
%% under the License.
%%
%% -------------------------------------------------------------------

-module(rand_compat).
-author("Christopher S. Meiklejohn <christopher.meiklejohn@gmail.com>").

-export([seed/3,
         seed/1,
         uniform/0,
         uniform/1,
         uniform_s/1,
         uniform_s/2]).

-ifdef(rand_module).
seed(SValue) ->
    rand:seed(exsplus, SValue).
-else.
seed(SValue) ->
    random:seed(SValue).
-endif.

-ifdef(rand_module).
seed(A,B,C) ->
    rand:seed(exsplus, {A,B,C}).
-else.
seed(A,B,C) ->
    random:seed(A,B,C).
-endif.

-ifdef(rand_module).
uniform() ->
    rand:uniform().
-else.
uniform() ->
    random:uniform().
-endif.

-ifdef(rand_module).
uniform(N) ->
    rand:uniform(N).
-else.
uniform(N) ->
    random:uniform(N).
-endif.

-ifdef(rand_module).
uniform_s(State) ->
    rand:uniform_s(State).
-else.
uniform_s(State0) ->
    random:uniform_s(State0).
-endif.

-ifdef(rand_module).
uniform_s(N, State) ->
    rand:uniform_s(N, State).
-else.
uniform_s(N, State0) ->
    random:uniform_s(N, State0).
-endif.