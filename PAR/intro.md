# Intro to Planning

## PDDL

### Domain
Condiciones iniciales sobre las que se podrán definir distintos problemas

- requirements: Librerías que se importan
- predicates: Predicados que se usan junto con las variables definidas con ?nombre
- actions: Acciones que se pueden realizar
    - parameters: Parámetros que se usan en la acción
    - preconditions: Condiciones que se deben cumplir para realizar la acción definidas logicamente. Todas tienen que ser True
    - effects: Efectos que se producen al realizar la acción.

### Problem
Problema concreto que se quiere resolver

- domain: Dominio al que pertenece el problema
- objects: Objetos que se usan en el problema
- init: Condiciones iniciales del problema
- goal: Objetivo del problema. El orden es muy importante. No es lo mismo (:goal (and (on a b) (on b c))) que (:goal (and (on b c) (on a b))).

### Run
- right click on the problem file -> PPDL: Run the planner...
- Select the planner. For the moment, the default one is the one used.
- Hay un editor online que se puede usar para probar el código. [link](http://editor.planning.domains/)
    - Se puede guardar el id de sesion y usarlo a posteriori en el online.
    - Se puede descargar para ejecutar offline (aunque nosotros desde vscode lo ejecutamos online). Si lo queremos ejecutar en local, entonces nos descargamos uno de los que hay por ahi.