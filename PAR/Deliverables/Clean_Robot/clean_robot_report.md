# Practical Exercise: Cleaner Robotic Task
- [Practical Exercise: Cleaner Robotic Task](#practical-exercise-cleaner-robotic-task)
  - [Introduction](#introduction)
  - [Planning method](#planning-method)
  - [Domain](#domain)
    - [Predicates](#predicates)
  - [Actions](#actions)
  - [Initial and Goal States](#initial-and-goal-states)
    - [Initial State](#initial-state)
    - [Goal State](#goal-state)

## Introduction
This work presents a Planning and Approximate Reasoning (PAR) approach to tackle the problem of cleaning a square building composed of n^2 offices using a robotic cleaner. The goal is to design and implement a PDDL-based planner to efficiently guide the robot through the building, cleaning offices, and potentially pushing boxes to designated locations to achieve a clean and organized state.

The problem involves a grid of offices where the robot, named `PR2`, can move horizontally or vertically between adjacent offices. The initial configuration includes dirty and clean offices, along with the presence of boxes in certain locations. Various actions, such as cleaning offices, moving between them, and pushing boxes, are to be defined in PDDL to represent the robot's behavior. Additionally, predicates are introduced to capture essential aspects of the world, including the robot's location, box positions, office cleanliness, and adjacency relationships.

The objective is to reach a predefined goal state where all offices are clean, and boxes are correctly positioned. The work outlines the process of implementing the PDDL planner, defining the domain and problem, and extensively testing the solution on a range of test cases of increasing complexity. The document not only discusses the final path but also delves into the solutions found by the planner and the optimality of the plans.

The report concludes with an analysis of the problem's complexity and the number of nodes generated and expanded during planning. The proposed approach offers insights into the PAR paradigm for solving real-world robotic tasks, specifically focusing on efficient cleaning in dynamic environments.

## Planning method
The planning method used in this work is STRIPS. The Stanford Research Institute Problem Solver, known by its acronym STRIPS, is an automated planner developed by Richard Fikes and Nils Nilsson in 1971 at SRI International.

A STRIPS instance is composed of:

- An initial state
- The specification of the goal states – situations that the planner is trying to reach
- A set of actions. For each action, the following are included:
    - preconditions (what must be established before the action is performed)
    - postconditions (what is established after the action is performed).

Another action definition can be specified using preconditions, add list and delete list. However, in this case, the previous definition is used.

## Domain

### Predicates

The used predicates are the following:

- at($o$): The robot is at office $o$
- box-at($o$): There is a box at office $o$
- adj($o_1$, $o_2$): Offices o_1 and o_2 are adjacent
- dirty($o$): The office $o$ is dirty

## Actions

- **Clean($o$)**: The robot cleans the office $o$. The precondition is that the robot is at the office $o$ and the effect is that the office $o$ is not dirty.
    - **Precondition**: at($o$) $\land$ dirty($o$)
    - **Effect**: $\neg$ dirty($o$)

- **Move($o_1$, $o_2$)**: The robot moves from office $o_1$ to office $o_2$. The precondition is that the robot is at the office $o_1$, both offices are adjacent and the effect is that the robot is at the office $o_2$.
    - **Precondition**: at($o_1$) $\land$ adj($o_1$, $o_2$)
    - **Effect**: at($o_2$) $\land$ $\neg$ at($o_1$)

- **Push($o_1$, $o_2$)**: The robot pushes the box from office $o_1$ to office $o_2$. The precondition is that the robot is at the office $o_1$, both offices are adjacent and the office $o_2$ is empty and the effect is that the box is at the office $o_2$ and the office $o_1$ is empty.
The robot displaces itself to the office $o_2$.
    - **Precondition**: at($o_1$) $\land$ adj($o_1$, $o_2$) $\land$ box-at($o_1$) $\land$ $\neg$ box-at($o_2$)
    - **Effect**: box-at($o_2$) $\land$ $\neg$ box-at($o_1$) $\land$ at($o_2$) $\land$ $\neg$ at($o_1$)

## Initial and Goal States

### Initial State
The **initial state** of any problem is composed as follows:

- **Predicates**: 
    - Adjacency definition for all offices (adj($o_i$, $o_j$))
    - Dirty offices declaration (dirty($o_k$))
    - Box-at definition for all offices with a box (box-at($o_l$))
    - Robot is at a concrete office (at($o_m$))

where $i, j, k, l, m \in \{0, \dots , N^2 - 1\}$ and $N$ is the size of the problem.

### Goal State
The **final state** of any problem is composed as follows:

- **Predicates**: 
    - All dirty offices in the initial state are clean (not dirty($o_j$))
    - Robot is at a concrete office (at($o_m$))
    - All boxes are at the office where they should be (box-at($o_l$))

where $j, l, m \in \{0, \dots , N^2 - 1\}$ and $N$ is the size of the problem.



