---
title: How to Build an Application in The Year ___
description:
author: Yosef Serkez
tags: development opinion tech
---

> **Preface**
> This is not a guide on how to build a web application. Rather it is an attempt at transferring my mental model of what an application is and how you can go about choosing material to build one. The objective of this piece is to prepare you for your journey into the wild world wide web in search of answers to your many troubles.

## What is an application?
An application has primarily three responsibilities
1. Interact with information.
2. Operate on information.
3. Organize and persist information.

> **Data** is the more commonly used term to describe **Persisted Information**.

A common application architecture to handle these responsibilities consists of three main actors: the *Client*, the *Server*, and the *Database*.

1. A *Client* (such as a Website, or API) is an interface for end users to **Interact** with information.
2. A *Server* is the middleman facilitating  **operations** with the information, on behalf of a *Client*.
3. A *Database* is where information is **Organized** and **Persisted**.

**An example high level overview**
1. A websites user named *Bob* clicks a button "Read Post".
2. The *Client* (website) checks if it has the post locally and if not sends a request to the *Server* for that post.
3. The *Server* handles the request according to the logic as programmed, performing any authorization, manipulation, etc, including handling all necessary communications with the *Database* for data related to the request.
4.  The *Server* sends a response back to the *Client* with the relevant data, which then does it's own processing of the response before providing an answer to *Bob*.

Now there might be tens or even hundreds of steps along the way between Bob clicking the button and him seeing the post on screen, but when all is said and done they all serve the same purpose of providing a means for Bob to interact with the post he requested. This leads to our first first principle :)
>** Principle 1. **
>Applications are the complete experience of interacting with information.

It is possible to remove an above element from the stack but not the underlying job it fulfills without violating our definition of an Application.

- To remove the client means to have no interface to interact with the information through.
- To remove the server would by nature require shifting the responsibility of performing operations on the database elsewhere, such as to the client (bad idea).
- To remove the database is again to move the responsibility of persisting data to either the client or server or otherwise have no persisted information at all.

The point here is that an application is not a client, server, database, or any other number of material  and tools used to facilitate the aforementioned. Rather an application is the interaction, manipulation, and storage of information. Everything implemented is a means to accomplish this in a determined way.

> **Principle 2.**
> An application is the orchestration of technological material and tools organized to accomplish the specific applications goals.

> **Definition**
> *Material*: The "brick and mortar" of an application. Such as the database software or server code.
> *Tools*: The tooling used to write, test, or in some other way assist in the implementation of material.

Now that we understand the fundamentals of what makes an application we can begin to consider what some of the means for creating an application are.

## Tools, tools, and more tools.
Asking the "best" or even "right" way to build an application is like asking what is the best way to build a house. We can see beyond these terms by considering all technologies and methods as material means to an ends. When building a house the material and methods used are selected by a multitude of factors not to dissimilar from the heuristics used in application development. Maybe cost, durability, resiliency, simplicity are the primary factors. Which material to select can be determined by asking questions against the priorities of the final product and other material used. What this means is that instead of asking which material to build with, **one should begin by asking what are our priorities and from there determine which material best fulfill those.** So what might some of those priorities be?

There are just a few objective priorities in application development, with most being subjective to ones specific requirements. The first objective priority of developing an application is to fulfill the definition of what an application is as defined in principle one. For example to make sure the data is not lost or corrupted (persistence, network security), and to ensure all parts of the application are always available and working are pretty important priorities because if the database with all the data is lost or the client is unavailable our application is no longer an application. A layer above that and also very common but more application specific might be ensuring data is only accessed by the right users (authorization, authentication), and other "business" related logic. A step further and you might be considering priorities related to load time, or how to style a specific web page. The levels of priorities can become quite steep and complex. It is between levels of priories where a division of labor is often found (such as between front and back end development). Priorities rarely stand alone in scope, and until a certain level fairly common between applications.

## So many choices.
There are many abstractions of solutions to priorities of one application to more generic solutions that can be implemented elsewhere by other developers. This is where we end up with new languages, frameworks, tooling, and any number of technologies. It's hard not to feel overwhelmed by all the available options in the application development ecosystem but such is the paradox of choice. Its important to understand that every tool was developed with a specific set of priorities in mind. Once you have your own priorities, you can make better judgment about which tools and material if any are best suited for you. One approach to developing an application like any piece of software, can be to begin by asking what are the most generic priorities of my application, and consequently finding and implementing appropriate solutions, then work your way towards the more application specific priorities and solutions. The process becomes less about learning every language, tool, framework, and other technology available, and how it fits into the stack, and more akin to finding the best material for the specific priority at hand. **It is far more efficient to find a tool to solve an understood problem then it is to find a problem to justify a tool.**

A general rule of most "tools" is to try and have you write less code, so much so in fact that working together they can overwhelm you into writing no code at all! Don't let that happen. Build applications from first principles, utilizing the resources provided by the rich ecosystem on an as needed basis. Know your priorities and the best solution will follow. If something stands in the way of you accomplishing your priorities, than it is wrong for you. After all the fastest, cleanest, most resilient and efficient code is no code at all.

From here you can go learn more about how to determine your priorities. You have an idea of what your application should do but how do you get there? You must understand the different priorities and consequential solutions of an application deeply. If your priority is to persist data, and the solution is to utilize a database, study the priorities of different databases to better select one for your own. Then learn how to use it. The same goes for everything from selecting and learning languages, and frameworks, to integrating an obscure package for translating English into Dothraki.  Studying the ecosystem can be helpful for understanding what sorts of questions to be asking. Take it slowly there's much to learn, have patience there's time to do so, and enjoy the process its wildly creative.

